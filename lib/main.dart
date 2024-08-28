import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'firebase_options.dart';
import 'services/get_it.dart';
import 'services/auth_firebase_service.dart';
import 'data/repositories/auth_user_repository.dart';
import 'logic/blocs/auth/auth_bloc.dart';
import 'logic/blocs/skills_bloc/skills_bloc.dart';
import 'logic/cubits/education/education_cubit.dart';
import 'logic/cubits/profile/cubit/profile_cubit.dart';
import 'logic/cubits/education/education_form_cubit.dart';
import 'ui/screens/splash_screen/splash_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setUp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) {
        return RepositoryProvider(
          create: (context) =>
              AuthUserRepository(getIt.get<AuthFirebaseService>()),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => SkillsBloc(),
              ),
              BlocProvider(
                create: (context) => AuthBloc(getIt.get<AuthUserRepository>()),
              ),
              BlocProvider(
                create: (context) => EducationCubit(),
              ),
              BlocProvider(
                create: (context) => ProfileCubit(),
              ),
              BlocProvider(
                create: (context) => EducationFormCubit(),
              ),
            ],
            child: ScreenUtilInit(
              designSize: const Size(360, 690),
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: theme,
                  darkTheme: darkTheme,
                  home: const SplashScreen(),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
