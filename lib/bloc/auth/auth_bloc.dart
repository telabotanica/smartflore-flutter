import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/auth/auth_repo.dart';
import 'package:smartflore/repo/user/user_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  final UserRepo userRepo;

  AuthBloc(this.authRepo, this.userRepo) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        login: ((user) async {
          emit(const AuthState.loginProcessing());
          AuthenticationResponse authResponse = await authRepo.login(user);
          if (authResponse.isOk == true && authResponse.user != null) {
            await userRepo.updateUserInfo(UserInfoApp(
                email: user.login, token: authResponse.user!.token));
            emit(AuthState.authStatus(userRepo.isAuth()));
            emit(const AuthState.loginCompleted());
          } else {
            emit(AuthState.loginError(authResponse));
          }
        }),
        logout: () {
          userRepo.logout();
          emit(AuthState.authStatus(userRepo.isAuth()));
          emit(const AuthState.logoutSuccess());
        },
      );
      // TODO: implement event handler
    });
  }
}
