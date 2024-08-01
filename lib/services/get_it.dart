import 'package:aytijobs/data/repositories/auth_user_repository.dart';
import 'package:aytijobs/services/auth_firebase_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton(AuthFirebaseService());
  getIt.registerSingleton(AuthUserRepository(getIt.get<AuthFirebaseService>()));
  getIt.registerSingleton(getIt.get<AuthUserRepository>());
}
