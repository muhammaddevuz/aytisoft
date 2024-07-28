import 'package:aytijobs/ui/screens/appreciation_screen.dart';
import 'package:aytijobs/ui/screens/auth_screens/forgot_password.dart';
import 'package:aytijobs/ui/screens/workExp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        // home: WorkexpScreen(),
        home: AppreciationScreen(), // shokh-time screen
      ),
    );
  }
}
