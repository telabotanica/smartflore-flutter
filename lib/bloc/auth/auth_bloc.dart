import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/auth/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(const _Initial()) {
    on<AuthEvent>((event, emit) {
      event.when(login: ((user) {
        authRepo.login(user);
      }));
      // TODO: implement event handler
    });
  }
}
