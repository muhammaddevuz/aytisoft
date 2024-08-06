import 'package:aytijobs/ui/screens/auth_screens/forgot_password.dart';
import 'package:aytijobs/ui/screens/auth_screens/login_screen.dart';
import 'package:aytijobs/ui/screens/auth_screens/successfully_screen.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckEmailScreen extends StatefulWidget {
  final String email;
  const CheckEmailScreen({
    super.key,
    required this.email,
  });

  @override
  State<CheckEmailScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<CheckEmailScreen> {
  final emailController = TextEditingController();

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: widget.email,
      queryParameters: {
        'subject': 'Password Reset Request',
        'body': 'Please click the link below to reset your password.'
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantcolors.allBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Check Your Email",
                  style: GoogleFonts.dmSans(
                    fontSize: 30.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "We have sent the reset password to the email address brandonelouis@gmial.com",
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(50.h),
                SvgPicture.asset("assets/icons/check_email_icon.svg"),
                Gap(80.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (ctx) {
                      return const SuccessfullyScreen();
                    }));
                  },
                  child: GestureDetector(
                    onTap: _launchEmail,
                    child: Container(
                      width: 317.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constantcolors.mainColor,
                      ),
                      child: Center(
                        child: Text(
                          "OPEN YOUR EMAIL",
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return const LoginScreen();
                    }));
                  },
                  child: Container(
                    width: 317.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Constantcolors.purpleColor,
                    ),
                    child: Center(
                      child: Text(
                        "BACK TO LOGIN",
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You have not received the email?",
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    const Gap(5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return const ForgotPassword();
                        }));
                      },
                      child: Text(
                        "Resend",
                        style: GoogleFonts.dmSans(
                          color: Constantcolors.darkOrange,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: Constantcolors.darkOrange,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
