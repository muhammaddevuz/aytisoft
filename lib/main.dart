import 'package:aytijobs/ui/screens/adding_job_screens/add_job_screen.dart';
import 'package:aytijobs/ui/screens/auth_screens/login_screen.dart';
import 'package:aytijobs/ui/screens/auth_screens/register_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/appreciation_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/education_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/add_about_me_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/workExp_screen.dart';
import 'package:aytijobs/ui/screens/splash_screen/splash_screen.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ForgotPassword(),
      ),
    );
  }
}
