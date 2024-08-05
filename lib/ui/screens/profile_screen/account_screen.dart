import 'add_about_me_screen.dart';
import '../../widgets/profile_widgets/followers_widget.dart';
import '../../../utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Container(
            height: 500,
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            color: Colors.grey.shade200,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AddAboutMeScreen();
                            },
                          ),
                        );
                      },
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/about me_icon.png"),
                      ),
                      title: const Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/work experience_icon.png"),
                      ),
                      title: const Text(
                        "Work Experience",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/education_icon.png"),
                      ),
                      title: const Text(
                        "Education",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/skill_icon.png"),
                      ),
                      title: const Text(
                        "Skill",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/language_icon.png"),
                      ),
                      title: const Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/appreciation_icon.png"),
                      ),
                      title: const Text(
                        "Appreciation",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                            "images/account_screen_icons/resume_icon.png"),
                      ),
                      title: const Text(
                        "Resume",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade100,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
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
