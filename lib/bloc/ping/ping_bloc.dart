import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/repo/ping/taxon/ping_repo.dart';

part 'ping_event.dart';
part 'ping_state.dart';
part 'ping_bloc.freezed.dart';

class PingBloc extends Bloc<PingEvent, PingState> {
  final PingRepo pingRepo;

  PingBloc({required this.pingRepo}) : super(const _Initial()) {
    on<PingEvent>((event, emit) {
      event.maybeWhen(
          ping: (trailId, trailStartLocation) {
            pingRepo.postPing(trailId, trailStartLocation);
          },
          orElse: () {});
    });
  }
}
