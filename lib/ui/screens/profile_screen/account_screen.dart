import 'package:aytijobs/ui/screens/profile_screen/appreciation_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/language_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/education_screen.dart';
import 'package:aytijobs/ui/screens/profile_screen/workExp_screen.dart';
import 'package:aytijobs/ui/screens/profiles_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'add_about_me_screen.dart';
import 'profile_widgets/followers_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: _buildAccountOptions(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
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
            _buildHeaderIcons(context),
            _buildProfileDetails(),
            _buildStatsAndEditButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildIconButton('share_icon.png', () {}),
      ],
    );
  }

  Widget _buildIconButton(String iconPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        'assets/images/account_screen_icons/$iconPath',
        height: 26,
        width: 26,
        color: const Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _buildProfileDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/account_screen_icons/profile_avatar_image.png',
            width: 52,
            height: 52,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'John Doe',
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
    );
  }

  Widget _buildStatsAndEditButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FollowersWidget(amount: '1236', title: 'Follower'),
        FollowersWidget(amount: '24K', title: 'Following'),
        _buildEditProfileButton(context),
      ],
    );
  }

  Widget _buildEditProfileButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProfileScreen();
            },
          ),
        );
      },
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Edit profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(
              'assets/images/account_screen_icons/edit_icon.png',
              height: 24,
              width: 24,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildAccountOptions(BuildContext context) {
    return [
      _buildAccountOption(
        context,
        title: "About Me",
        iconPath: "about_me_icon.png",
        onTap: () => _navigateToAddAboutMeScreen(context),
      ),
      _buildAccountOption(
        context,
        title: "Work Experience",
        iconPath: "work_experience_icon.png",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const WorkexpScreen();
              },
            ),
          );
        },
      ),
      _buildAccountOption(
        context,
        title: "Education",
        iconPath: "education_icon.png",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EducationScreen();
              },
            ),
          );
        },
      ),
      _buildAccountOption(
        context,
        title: "Skill",
        iconPath: "skill_icon.png",
        onTap: () {},
      ),
      _buildAccountOption(
        context,
        title: "Language",
        iconPath: "language_icon.png",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LanguageScreen();
              },
            ),
          );
        },
      ),
      _buildAccountOption(
        context,
        title: "Appreciation",
        iconPath: "appreciation_icon.png",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AppreciationScreen();
              },
            ),
          );
        },
      ),
      _buildAccountOption(
        context,
        title: "Resume",
        iconPath: "resume_icon.png",
        onTap: () {},
      ),
    ];
  }

  Widget _buildAccountOption(BuildContext context,
      {required String title,
      required String iconPath,
      required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: ListTile(
        onTap: onTap,
        leading: Image.asset(
          "assets/images/account_screen_icons/$iconPath",
          height: 24,
          width: 24,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: const TextStyle(
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
    );
  }

  void _navigateToAddAboutMeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddAboutMeScreen(),
      ),
    );
  }
}
