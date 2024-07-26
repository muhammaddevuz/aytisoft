import 'package:aytijobs/ui/screens/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WorkexpScreen(),
      home: LoginScreen(), // shokh-time screen
    );
  }
}
