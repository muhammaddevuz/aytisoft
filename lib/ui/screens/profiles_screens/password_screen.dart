import 'package:aytijobs/utils/theme_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:aytijobs/ui/widgets/other_widgets/all_in_one.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});
  final oldpasscontroller = TextEditingController();
  final newpasscontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void submit() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = ThemeManager.getPrimaryColor(context);
    final textColor = ThemeManager.getTextColor(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Update Password',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                AllInOne(
                  controller: oldpasscontroller,
                  title: 'Old Password',
                  filledColor: backgroundColor,
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Input your password';
                    }
                    return null;
                  },
                  labelText: '**********',
                  sufficon: Icon(CupertinoIcons.eye_slash, color: textColor),
                ),
                AllInOne(
                  controller: newpasscontroller,
                  title: 'New Password',
                  filledColor: backgroundColor,
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Input your password';
                    }
                    return null;
                  },
                  labelText: '**********',
                  sufficon: Icon(CupertinoIcons.eye_slash, color: textColor),
                ),
                AllInOne(
                  controller: confirmpasscontroller,
                  title: 'Confirm Password',
                  filledColor: backgroundColor,
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Input your password';
                    }
                    if (newpasscontroller.text != confirmpasscontroller.text) {
                      return 'Password is not correct';
                    }
                    return null;
                  },
                  labelText: '**********',
                  sufficon: Icon(CupertinoIcons.eye_slash, color: textColor),
                ),
                const SizedBox(
                  height: 260,
                ),
                Center(
                  child: ZoomTapAnimation(
                    onTap: () => submit(),
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        width: 270,
                        height: 50,
                        child: const Text(
                          "Update",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
