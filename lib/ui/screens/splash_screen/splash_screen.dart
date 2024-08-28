import 'package:aytijobs/logic/blocs/auth/auth_bloc.dart';
import 'package:aytijobs/logic/blocs/auth/auth_event.dart';
import 'package:aytijobs/logic/blocs/auth/auth_state.dart';
import 'package:aytijobs/ui/screens/other_screens/bottomNavBar.dart';
import '../onboarding_screen/onbording_screen.dart';
import '../../../utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    context.read<AuthBloc>().add(ChechStateAuthEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantcolors.mainColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessLogoutAuthState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (ctx) => const OnbordingScreen(),
              ),
            );
          } else if (state is SuccessAuthState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (ctx) => const Bottomnavbar()),
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/ayti_logo.png",
                width: 150,
                height: 150,
              ),
              Text(
                "Ayti Jobs",
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
