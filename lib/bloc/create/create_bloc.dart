import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart' hide Path;
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/taxon/taxon_enum.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  final Box<CreateTrail> createTrailBox;
  final GeolocationBloc geolocationBloc;
  final GeolocationRepo geolocationRepo;
  final TrailRepo trailRepo;

  late DateTime lastRecordPositionTime = DateTime.now();
  LatLng? lastRecordPosition;
  bool pauseRecording = false;

  CreateBloc(
      {required this.createTrailBox,
      required this.geolocationBloc,
      required this.geolocationRepo,
      required this.trailRepo})
      : super(const _Initial()) {
    on<CreateEvent>((event, emit) {
      event.maybeWhen(
          start: () {
            createTrailBox.clear();
            pauseRecording = false;
            emit(const CreateState.start());
          },
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
            print('registerLocation ::: ====');
            geolocationBloc.stream.listen((event) {
              print('geolocationBloc ===== $event');
              if (!pauseRecording) {
                event.whenOrNull(locationUpdate: (Position position) {
                  DateTime now = DateTime.now();

                  if (lastRecordPosition == null ||
                      now.difference(lastRecordPositionTime).inSeconds > 1) {
                    LatLng currentPos =
                        LatLng(position.latitude, position.longitude);
                    if (lastRecordPosition == null) {
                      Path? registerPath = recordPos(currentPos, now);
                      if (registerPath != null) {
                        print('=====-------------- emit 1');
                        add(CreateEvent.updatePath(registerPath));
                      }
                    } else {
                      Distance distance = const Distance();

                      final double meter =
                          distance(currentPos, lastRecordPosition!);
                      if (meter > 2) {
                        Path? registerPath = recordPos(currentPos, now);
                        if (registerPath != null) {
                          print('=====-------------- emit next');
                          add(CreateEvent.updatePath(registerPath));
                        }
                      }
                    }
                  }
                });
              }
            });
          },
          updatePath: (path) {
            print('=====EMIT UPDATEPATH ${path.coordinates.length}');
            emit(CreateState.updatePath(path));
          },
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
              TaxonLight taxonLight = TaxonLight.fromTaxon(taxon);

              List<ImageAPI> imageList = [];
              for (var tab in taxon.tabs) {
                if (tab.type == TabTypeEnum.gallery.name) {
                  imageList = tab.images!;
                }
              }

              ImageAPI? imageApi = imageList.isNotEmpty ? imageList[0] : null;
              List<Image> images = imageApi != null
                  ? [Image(id: imageApi.id, url: imageApi.url)]
                  : [];

              Occurrence occurrence = Occurrence(
                position: currentLatLng,
                taxon: taxonLight,
                images: images,
              );

              List<Occurrence> occurrences = currentTrail.occurrences.toList();

              occurrences.add(occurrence);

              CreateTrail updatedTrail =
                  currentTrail.copyWith(occurrences: occurrences);

              createTrailBox.put('current', updatedTrail);

              add(CreateEvent.taxonRegistered(occurrences));
            }
          },
          taxonRegistered: (occurrences) {
            emit(CreateState.taxonAdded(occurrences));
          },
          saveTrail: (trail) async {
            emit(const CreateState.savingTrail());
            if (trail.path.coordinates.isNotEmpty) {
              trail = trail.copyWith(
                position: SavePosition(
                    start: trail.path.coordinates[0],
                    end: trail.path.coordinates.last),
              );
            }
            await trailRepo.saveTrail(trail);
            emit(const CreateState.trailSaved());
          },
          orElse: () {});
    });
  }

  Path? recordPos(LatLng currentPos, DateTime now) {
    print('recordPos ====RecordPos');
    lastRecordPositionTime = now;
    lastRecordPosition = currentPos;
    CreateTrail? currentTrail = createTrailBox.get('current');
    print('recordPos ==== currentTrial  : ${(currentTrail != null)}');
    if (currentTrail != null) {
      List<LatLng> coordinates = currentTrail.path.coordinates.toList();
      coordinates.add(currentPos);
      Path path = Path(type: currentTrail.path.type, coordinates: coordinates);
      CreateTrail updatedTrail = currentTrail.copyWith(path: path);

      createTrailBox.put('current', updatedTrail);

      print('recordPos ===== ${path.coordinates.length}');
      //add(CreateEvent.updatePath(path));
      return path;
    }
    return null;
  }
}
