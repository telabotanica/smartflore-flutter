import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/models/create/create_model.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc() : super(_Initial()) {
    on<CreateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
