
import 'package:aytijobs/blocs/skills_bloc/skills_bloc.dart';
import 'package:aytijobs/ui/screens/profile_screen/add_skills_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        designSize: Size(360, 690),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => SkillsBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // home: WorkexpScreen(),
            home: AddSkillsScreen(), // shokh-time screen
          ),
        ));
  }
}
