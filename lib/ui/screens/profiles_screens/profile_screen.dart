// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/ui/screens/profiles_screens/settings_screen.dart';
import 'package:aytijobs/ui/widgets/custom_radiobutotn_gender.dart';
import 'package:aytijobs/ui/widgets/education_widgets/start_end_date_widget.dart';
import 'package:aytijobs/ui/widgets/phone_number_field.dart';
import 'package:aytijobs/ui/widgets/profile_widgets/all_in_one.dart';
import 'package:aytijobs/ui/widgets/radio_button.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:aytijobs/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProfileScreen extends StatelessWidget {
  final fullnamecontroller = TextEditingController();
  final datecontroller = TextEditingController();
  final gendercontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final locationcontroller = TextEditingController();
  submit() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/account_screen_icons/profile_background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 23.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/account_screen_icons/share_icon.png',
                            height: 26,
                            width: 26,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        15.sW(),
                        ZoomTapAnimation(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SettingsScreen();
                                },
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/icons/settings.png',
                            height: 26,
                            width: 26,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/account_screen_icons/profile_avatar_image.png',
                        width: 62,
                        height: 62,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'John doe',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const Text(
                      'Tashkent, Uzbekistan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      child: Text(
                        "Change Image",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AllInOne(
                    controller: fullnamecontroller,
                    title: 'Fullname',
                    filledColor: Colors.white,
                    labelText: 'Brandmaur Lous',
                    validatorfunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please write a your fullname';
                      }
                      return null;
                    },
                  ),
                  AllInOne(
                    sufficon: Icon(Icons.date_range_outlined),
                    controller: datecontroller,
                    title: 'Date of Birth',
                    filledColor: Colors.white,
                    labelText: '6 august,2024',
                    validatorfunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please write a your date of birth';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRadiobutotnGender(
                          title: 'Male', isSelected: true, onTap: () {}),
                      CustomRadiobutotnGender(
                          title: 'Female', isSelected: true, onTap: () {})
                    ],
                  ),
                  AllInOne(
                    controller: emailcontroller,
                    title: 'Email address',
                    filledColor: Colors.white,
                    labelText: 'email@gmail.com',
                    validatorfunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please write a your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                  PhoneNumberField(controller: phonecontroller),
                  AllInOne(
                    controller: emailcontroller,
                    title: 'Location',
                    filledColor: Colors.white,
                    labelText: 'California,Uzbekistan',
                    validatorfunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please write a your email';
                      }
                      return null;
                    },
                  ),
                  Gap(20),
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
                            "Save",
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
            )
          ],
        ),
      ),
    );
  }
}
