import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smartflore/bloc/auth/auth_bloc.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';

part 'mytrails_event.dart';
part 'mytrails_state.dart';
part 'mytrails_bloc.freezed.dart';

class MyTrailsBloc extends Bloc<MyTrailsEvent, MyTrailsState> {
  final TrailsRepo trailsRepo;
  final Box<Trails> trailsBox;
  final AuthBloc authBloc;
  final CreateBloc createBloc;
  StreamSubscription? authSubscription;
  StreamSubscription? createSubscription;

  MyTrailsBloc(this.trailsRepo, this.trailsBox, this.authBloc, this.createBloc)
      : super(const _Initial()) {
    authSubscription = authBloc.stream.listen((state) {
      state.maybeWhen(
          authStatus: (status) {},
          loginCompleted: () {
            add(const MyTrailsEvent.loadTrailsData());
          },
          orElse: () {});
    });

    createSubscription = createBloc.stream.listen((state) {
      state.whenOrNull(
        trailSaved: () {
          add(const MyTrailsEvent.loadTrailsData());
        },
      );
    });

    on<MyTrailsEvent>((event, emit) async {
      await event.when(
          init: () {},
          loadTrailsData: () async {
            emit(const MyTrailsState.dataLoading());
            Trails? trails = trailsBox.get('mytrails');
            if (trails != null && trails.trailList != null) {
              emit(MyTrailsState.dataLoaded(trails.trailList!));
            }

            try {
              List<Trail>? trailList = await trailsRepo.getMyTrailList();
              debugPrint('====>>> trailList $trailList');
              if (trailList != null) {
                trailsBox.put('mytrails', Trails(trailList: trailList));
                emit(MyTrailsState.dataLoaded(trailList));
              }
            } catch (e) {
              emit(MyTrailsState.dataLoadError(e.toString()));
            }
          });
    });
  }
}
