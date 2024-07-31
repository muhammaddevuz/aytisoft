import 'package:aytijobs/bloc/auth/auth_bloc.dart';
import 'package:aytijobs/data/repositories/auth_user_repository.dart';
import 'package:aytijobs/data/services/auth_firebase_service.dart';
import 'package:aytijobs/ui/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authService = AuthFirebaseService();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthUserRepository(authService),
      child: BlocProvider(
        create: (context) => AuthBloc(AuthUserRepository(authService)),
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (context, child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
