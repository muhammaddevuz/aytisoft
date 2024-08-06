import 'forgot_password.dart';
import 'register_screen.dart';
import '../../widgets/textFieldForm.dart';
import '../../../utils/constant_colors.dart';
import 'package:aytijobs/logic/blocs/auth/auth_bloc.dart';
import 'package:aytijobs/logic/blocs/auth/auth_event.dart';
import 'package:aytijobs/logic/blocs/auth/auth_state.dart';
import 'package:aytijobs/ui/screens/auth_screens/forgot_password.dart';
import 'package:aytijobs/ui/screens/auth_screens/register_screen.dart';
import 'package:aytijobs/ui/screens/home_screen.dart';
import 'package:aytijobs/ui/screens/profiles_screens/settings_screen.dart';
import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  bool isHide = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isCheck = true;
      });
      context.read<AuthBloc>().add(LoginAuthEvent(
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
    return Scaffold(
      backgroundColor: Constantcolors.allBackgroundColor,
      body: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
        if (state is SuccessAuthState) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (ctx) => const HomeScreen()),
            (route) => false,
          );
        } else if (state is ErrorAuthState) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Logged Failed"),
                content: Text(state.message),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Retry"),
                  ),
                ],
              );
            },
          );
        } else {
          InitialAuthState();
        }
      }, builder: (context, state) {
        if (state is LoadingAuthState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

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
                      "Welcome Back",
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
                      validatorfunc: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter your email";
                        }
                        return null;
                      },
                    ),
                    const Gap(20),
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
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
                    const Gap(20),
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
                            const Gap(10),
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
                    const Gap(35),
                    GestureDetector(
                      onTap: isCheck ? _submit : null,
                      child: Container(
                        width: 266.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isCheck
                              ? Constantcolors.mainColor
                              : Constantcolors.purpleColor,
                        ),
                        child: Center(
                          child: Text(
                            "LOGIN",
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
                            "SIGN IN WITH GOOGLE",
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
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
                          "You don't have an account yet?",
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        const Gap(5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                CupertinoPageRoute(builder: (ctx) {
                              return const RegisterScreen();
                            }));
                          },
                          child: Text(
                            "Sign up",
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
      }),
    );
  }
}
