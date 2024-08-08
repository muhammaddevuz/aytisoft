// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/ui/widgets/other_widgets/all_in_one.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});
  final oldpasscontroller = TextEditingController();
  final newpasscontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();
  submit() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Update Password',
              style: TextStyle(
                color: Constantcolors.mainColor,
                fontSize: 16,
              ),
            ),
            AllInOne(
              controller: oldpasscontroller,
              title: 'Old Password',
              filledColor: Colors.white,
              validatorfunc: (value) {
                if (value == null || value.isEmpty) {
                  return 'Input your password';
                }
                return null;
              },
              labelText: '**********',
              sufficon: Icon(CupertinoIcons.eye_slash),
            ),
            AllInOne(
              controller: newpasscontroller,
              title: 'New Password',
              filledColor: Colors.white,
              validatorfunc: (value) {
                if (value == null || value.isEmpty) {
                  return 'Input your password';
                }
                return null;
              },
              labelText: '**********',
              sufficon: Icon(CupertinoIcons.eye_slash),
            ),
            AllInOne(
              controller: confirmpasscontroller,
              title: 'Confirm Password',
              filledColor: Colors.white,
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
              sufficon: Icon(CupertinoIcons.eye_slash),
            ),
            SizedBox(
              height: 360,
            ),
            Center(
              child: ZoomTapAnimation(
                onTap: submit,
                child: Card(
                  color: Constantcolors.mainColor,
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
    );
  }
}
