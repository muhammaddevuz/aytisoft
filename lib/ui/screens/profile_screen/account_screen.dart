import 'package:aytijobs/ui/screens/profile_screen/add_about_me_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 35),
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.purple.shade900,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        "images/account_screen_icons/share_icon.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        "images/account_screen_icons/settings_icon.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Orlando Diggs",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "California, USA",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "120k",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Follower",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "23k",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(),
                            child: Image.asset(
                              "images/account_screen_icons/edit_icon.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
