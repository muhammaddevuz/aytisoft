import 'package:aytijobs/data/services/auth_firebase_service.dart';

class AuthUserRepository {
  final AuthFirebaseService authFirebaseService;

  AuthUserRepository(this.authFirebaseService);

  Future<void> registerUser(String email, String password) async {
    await authFirebaseService.register(email, password);
  }

  Future<void> login(String email, String password) async {
    await authFirebaseService.login(email, password);
  }

  Future<void> resetPassword(String email) async {
    await authFirebaseService.resetPassword(email: email);
  }

  Future<void> logout() async {
    await authFirebaseService.logout();
  }
}
