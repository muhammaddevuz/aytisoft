import 'auth_event.dart';
import 'auth_state.dart';
import '../../../data/repositories/auth_user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUserRepository userRepository;

  AuthBloc(this.userRepository) : super(InitialAuthState()) {
    on<RegisterAuthEvent>(_register);
    on<LoginAuthEvent>(_login);
    on<ResetPasswordAuthEvent>(_resetPassword);
    on<LogoutAuthEvent>(_logout);
  }

  /// register user bloc
  void _register(RegisterAuthEvent event, Emitter emit) async {
    emit(LoadingAuthState());
    try {
      await userRepository.registerUser(event.email, event.password);
      emit(SuccessAuthState());
    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }

  /// login user bloc
  void _login(LoginAuthEvent event, Emitter emit) async {
    emit(LoadingAuthState());
    try {
      await userRepository.login(event.email, event.password);
      emit(SuccessAuthState());
    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }

  /// resetPassword user bloc
  void _resetPassword(ResetPasswordAuthEvent event, Emitter emit) async {
    emit(LoadingAuthState());
    try {
      await userRepository.resetPassword(event.email);
      emit(SuccessAuthState());
    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }

  /// logout user bloc
  void _logout(LogoutAuthEvent event, Emitter emit) async {
    emit(SuccessAuthState());
    try {
      await userRepository.logout();
      emit(SuccessAuthState());
    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }
}
