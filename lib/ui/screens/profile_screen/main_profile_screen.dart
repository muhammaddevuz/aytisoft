import 'package:aytijobs/ui/screens/profile_screen/profile_widgets/followers_widget.dart';

import '../../../utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/account_screen_icons/edit_icon.png',
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
                      width: 52,
                      height: 52,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FollowersWidget(amount: '1236', title: 'Follower'),
                      FollowersWidget(amount: '24K', title: 'Following'),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 120,
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Edit profile',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Image.asset(
                                'assets/images/account_screen_icons/edit_icon.png',
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
