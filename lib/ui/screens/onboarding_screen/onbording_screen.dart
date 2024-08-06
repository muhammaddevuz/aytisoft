import '../auth_screens/login_screen.dart';
import '../../../utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Jobspot",
              style: GoogleFonts.dmSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 301.h,
                child: SvgPicture.asset("assets/icons/onbording_icon.svg"),
              ),
            ),
            const Gap(30),
            Text(
              "Find Your",
              style: GoogleFonts.dmSans(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Dream Job",
              style: GoogleFonts.dmSans(
                fontSize: 40.sp,
                color: Constantcolors.darkOrange,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Constantcolors.darkOrange,
              ),
            ),
            Text(
              "Here!",
              style: GoogleFonts.dmSans(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            Text(
              "Explore all the most exciting job roles basedon your interest and study major.",
              style: GoogleFonts.dmSans(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const LoginScreen(); // Replace with your target screen
              },
            ),
          );
        },
        backgroundColor: Constantcolors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
