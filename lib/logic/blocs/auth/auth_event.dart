sealed class AuthEvent {}

/// Regisration users
final class RegisterAuthEvent extends AuthEvent {
  final String email;
  final String password;

  RegisterAuthEvent({
    required this.email,
    required this.password,
  });
}

/// Login users
final class LoginAuthEvent extends AuthEvent {
  final String email;
  final String password;

  LoginAuthEvent({required this.email, required this.password});
}

/// Reset password help for users
final class ResetPasswordAuthEvent extends AuthEvent {
  final String email;
  ResetPasswordAuthEvent({required this.email});
}



/// logout
final class LogoutAuthEvent extends AuthEvent {}

final class ChechStateAuthEvent extends AuthEvent {}

