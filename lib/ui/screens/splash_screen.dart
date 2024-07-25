import 'package:aytijobs/ui/screens/onbording_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 2), () {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
  //       return const OnbordingScreen();
  //     }));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff),
      appBar: AppBar(toolbarHeight: 10),
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
