import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart' hide Path;
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  final Box<CreateTrail> createTrailBox;
  final GeolocationBloc geolocationBloc;
  final GeolocationRepo geolocationRepo;

  late DateTime lastRecordPositionTime = DateTime.now();
  LatLng? lastRecordPosition;
  bool pauseRecording = false;

  CreateBloc(
      {required this.createTrailBox,
      required this.geolocationBloc,
      required this.geolocationRepo})
      : super(const _Initial()) {
    on<CreateEvent>((event, emit) {
      event.maybeWhen(
          // SAVE TITLE
          saveTitle: (String name) {
            emit(const CreateState.registeringName());
            CreateTrail currentTrail = CreateTrail(
                name: name,
                position: SavePosition(start: LatLng(0, 0), end: LatLng(0, 0)));
            createTrailBox.put('current', currentTrail);
            emit(CreateState.nameRegistered(name));
            add(const CreateEvent.registerLocation());
          },
          // REGISTER LOCATION
          registerLocation: () {
            //listen location stream
            geolocationBloc.stream.listen((event) {
              if (!pauseRecording) {
                event.whenOrNull(locationUpdate: (Position position) {
                  DateTime now = DateTime.now();

                  if (lastRecordPosition == null ||
                      now.difference(lastRecordPositionTime).inSeconds > 1) {
                    LatLng currentPos =
                        LatLng(position.latitude, position.longitude);
                    if (lastRecordPosition == null) {
                      recordPos(currentPos, now, emit);
                    } else {
                      Distance distance = const Distance();

                      final double meter =
                          distance(currentPos, lastRecordPosition!);
                      if (meter > 2) {
                        recordPos(currentPos, now, emit);
                      }
                    }
                  }
                });
              }
            });
          },
          updatePath: ((path) {
            emit(CreateState.updatePath(path));
          }),
          // PAUSE REGISTER LOCATION
          pause: () {
            pauseRecording = true;
          },
          // UNPAUSE REGISTER LOCATION
          unPause: () {
            pauseRecording = false;
          },
          registerTaxon: (taxon) async {
            emit(const CreateState.initial());

            CreateTrail? currentTrail = createTrailBox.get('current');
            if (currentTrail != null) {
              Position currentPos = await geolocationRepo.getCurrentLocation();
              LatLng currentLatLng =
                  LatLng(currentPos.latitude, currentPos.longitude);
              List<LatLng> coordinates = currentTrail.path.coordinates.toList();

              coordinates.add(currentLatLng);

              SaveOccurrence occurrence = SaveOccurrence(
                position: currentLatLng,
                taxonId: taxon.nameId,
                repoId: taxon.taxonRepository,
              );

              List<SaveOccurrence> occurrences =
                  currentTrail.occurrences.toList();

              occurrences.add(occurrence);

              CreateTrail updatedTrail =
                  currentTrail.copyWith(occurrences: occurrences);

              createTrailBox.put('current', updatedTrail);

              add(const CreateEvent.taxonRegistered());
            }
          },
          taxonRegistered: () {
            emit(const CreateState.taxonAdded());
          },
          orElse: () {});
    });
  }

  void recordPos(LatLng currentPos, DateTime now, emit) {
    lastRecordPositionTime = now;
    lastRecordPosition = currentPos;
    CreateTrail? currentTrail = createTrailBox.get('current');
    if (currentTrail != null) {
      List<LatLng> coordinates = currentTrail.path.coordinates.toList();

      coordinates.add(currentPos);
      Path path = Path(type: currentTrail.path.type, coordinates: coordinates);
      CreateTrail updatedTrail = currentTrail.copyWith(path: path);

      createTrailBox.put('current', updatedTrail);
      add(CreateEvent.updatePath(path));
    }
  }
}
