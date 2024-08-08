import '../../../logic/blocs/auth/auth_bloc.dart';
import '../../../logic/blocs/auth/auth_event.dart';
import '../../screens/auth_screens/forgot_password.dart';
import '../../screens/auth_screens/login_screen.dart';
import '../other_widgets/textFieldForm.dart';
import '../../../utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool isCheck = false;
  bool isHide = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isCheck = true;
      });
      context.read<AuthBloc>().add(RegisterAuthEvent(
            email: emailController.text,
            password: passwordController.text,
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fix the errors in the form."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create an Account",
                  style: GoogleFonts.dmSans(
                    fontSize: 30.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Full name",
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
                  controller: fullNameController,
                  filledColor: const Color(0xffFFFFFF),
                  hintText: "Brandone Louis",
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your fullName";
                    }
                    return null;
                  },
                ),
                const Gap(10),
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
                  hintText: "Brandonelouis@gmail.com",
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your email";
                    }
                    return null;
                  },
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                TextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.previous,
                  obscureText: isHide,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    alignLabelWithHint: true,
                    hintText: "Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHide = !isHide;
                        });
                      },
                      child: isHide
                          ? const Icon(CupertinoIcons.eye)
                          : const Icon(CupertinoIcons.eye_slash),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).unfocus();
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your password";
                    }
                    return null;
                  },
                ),
                Gap(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isCheck = !isCheck;
                            });
                          },
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xffE6E1FF),
                            ),
                            child: isCheck
                                ? Icon(
                                    Icons.check,
                                    color: Constantcolors.mainColor,
                                  )
                                : null,
                          ),
                        ),
                        Gap(10.h),
                        Text(
                          "Remember me",
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffAAA6B9),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return const ForgotPassword();
                        }));
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: GoogleFonts.dmSans(
                          color: Constantcolors.mainColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(35.h),
                GestureDetector(
                  onTap: isCheck ? _submit : null,
                  child: Container(
                    width: 266.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isCheck
                          ? Constantcolors.mainColor
                          : Colors.blueGrey[200],
                    ),
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  width: 266.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constantcolors.purpleColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/google.svg"),
                      const Gap(10),
                      Text(
                        "SIGN UP WITH GOOGLE",
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Already have an account?",
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (ctx) {
                          return const LoginScreen();
                        }));
                      },
                      child: Text(
                        "Sign In",
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
