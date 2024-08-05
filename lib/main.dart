import 'package:aytijobs/blocs/auth/auth_bloc.dart';
import 'package:aytijobs/blocs/skills_bloc/skills_bloc.dart';
import 'package:aytijobs/data/repositories/auth_user_repository.dart';
import 'package:aytijobs/services/auth_firebase_service.dart';
import 'package:aytijobs/firebase_options.dart';
import 'package:aytijobs/services/get_it.dart';
import 'package:aytijobs/ui/screens/profile_screen/add_skills_screen.dart';
import 'package:aytijobs/ui/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  setUp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthUserRepository(getIt.get<AuthFirebaseService>()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(getIt.get<AuthUserRepository>()),
          ),
          BlocProvider(
            create: (context) => SkillsBloc(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: AddSkillsScreen(),
            );
          },
        ),
      ),
    );
  }
}
