import '../../../logic/cubits/profile/cubit/profile_cubit.dart';
import '../../../logic/cubits/profile/cubit/profile_state.dart';
import 'settings_screen.dart';
import '../../widgets/other_widgets/custom_radiobutotn_gender.dart';
import '../../widgets/other_widgets/phone_number_field.dart';
import '../../widgets/other_widgets/all_in_one.dart';
import '../../widgets/other_widgets/profile_date.dart';
import '../../../utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  final fullnamecontroller = TextEditingController();
  final datecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final locationcontroller = TextEditingController();

  ProfileScreen({super.key});

  String dropdownValue = '+90';

  void onDropdownChanged(String newValue) {
    dropdownValue = newValue;
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 240.h,
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
                  padding:
                      EdgeInsets.only(left: 26.w, right: 26.w, bottom: 26.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/account_screen_icons/profile_avatar_image.png',
                                    width: 62.w,
                                    height: 62.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text(
                                  'John doe',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'Tashkent, Uzbekistan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/account_screen_icons/share_icon.png',
                                  height: 26.h,
                                  width: 26.w,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                              SizedBox(width: 15.w),
                              ZoomTapAnimation(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SettingsScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/icons/settings.png',
                                  height: 26.h,
                                  width: 26.w,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: 120.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: const Text(
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
                padding: EdgeInsets.all(20.w),
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
                          return 'Please write your fullname';
                        }
                        return null;
                      },
                    ),
                    ProfileDate(controller: datecontroller),
                    SizedBox(height: 20.h),
                    BlocBuilder<ProfileCubit, ProfileState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomRadiobutotnGender(
                              title: 'Male',
                              isSelected: state.gender == GenderEnum.male,
                              onTap: () => context
                                  .read<ProfileCubit>()
                                  .selectGender(GenderEnum.male),
                            ),
                            CustomRadiobutotnGender(
                              title: 'Female',
                              isSelected: state.gender == GenderEnum.female,
                              onTap: () => context
                                  .read<ProfileCubit>()
                                  .selectGender(GenderEnum.female),
                            ),
                          ],
                        );
                      },
                    ),
                    AllInOne(
                      controller: emailcontroller,
                      title: 'Email address',
                      filledColor: Colors.white,
                      labelText: 'email@gmail.com',
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please write your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    PhoneNumberField(
                      controller: phonecontroller,
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a phone number';
                        }
                        if (int.tryParse(value) == null) {
                          return 'please return the number';
                        }
                        return null;
                      },
                      onDropdownChanged: onDropdownChanged,
                    ),
                    AllInOne(
                      controller: locationcontroller,
                      title: 'Location',
                      filledColor: Colors.white,
                      labelText: 'California, Uzbekistan',
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please write your location';
                        }
                        return null;
                      },
                    ),
                    Gap(20.h),
                    Center(
                      child: ZoomTapAnimation(
                        onTap: submit,
                        child: Card(
                          color: Constantcolors.mainColor,
                          child: Container(
                            alignment: Alignment.center,
                            width: 270.w,
                            height: 50.h,
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
