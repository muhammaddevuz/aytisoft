import 'package:aytijobs/services/m.dart';
import 'package:aytijobs/ui/screens/profile_screen/education_screen.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) async {
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
          home:
              EducationScreen(), //my screen not oper's screen not shokh's okay ☻
        );
      },
    );
  }
}
