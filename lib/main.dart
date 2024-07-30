import 'package:aytijobs/ui/screens/adding_job_screen/add_job_screen.dart';
import 'package:aytijobs/ui/screens/adding_job_screen/add_post_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/appreciation_screen.dart';
import 'package:aytijobs/ui/screens/auth_screens/forgot_password.dart';
import 'package:aytijobs/ui/screens/profile_screen/workExp_screen.dart';
import 'package:aytijobs/ui/screens/test_screen.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.dmSansTextTheme(
              Theme.of(context).textTheme.apply(
                    bodyColor: Constantcolors.mainColor,
                    displayColor: Constantcolors.mainColor,
                  ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          // home: WorkexpScreen(),
          home: TestScreen(), //oper's screen not shokh's
        );
      },
    );
  }
}
