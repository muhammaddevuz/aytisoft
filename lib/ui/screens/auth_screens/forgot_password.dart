import 'package:aytijobs/ui/screens/auth_screens/login_screen.dart';
import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgotPassword> {
  bool isCheck = false;
  bool isHide = false;

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantcolors.allBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password?",
                  style: GoogleFonts.dmSans(
                    fontSize: 30.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "To reset your password, you need your email or mobile number that can be authenticated",
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(50),
                SvgPicture.asset("assets/icons/forgotscreen_icon.svg"),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Textfieldform(
                  controller: emailController,
                  filledColor: const Color(0xffFFFFFF),
                  hintText: "Brandonelouis@gmail.com ",
                ),
                const Gap(35),
                Container(
                  width: 317.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constantcolors.mainColor,
                  ),
                  child: Center(
                    child: Text(
                      "RESET PASSWORD",
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
