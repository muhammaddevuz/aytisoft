import 'package:aytijobs/ui/screens/auth_screens/login_screen.dart';
import 'package:aytijobs/ui/screens/bottomNavBar.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnavbar(),
      // home: LoginScreen(),
    );
  }
}
