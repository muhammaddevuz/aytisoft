// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/ui/widgets/other_widgets/job_widget_for_company.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:aytijobs/ui/widgets/other_widgets/about_us_widget.dart';
import 'package:aytijobs/ui/widgets/other_widgets/post_widget.dart';
import 'package:aytijobs/utils/constant_colors.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  bool isAbout = true;
  bool isPost = false;
  bool isJobs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 85,
                    ),
                    const Gap(15),
                    Text(
                      'Google',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                  Text(
                    'º',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                  Text(
                    'California',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                  Text(
                    'º',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                  Text(
                    '1 day ago',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ZoomTapAnimation(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '+ Follow',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ZoomTapAnimation(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/icons/web.png',
                                  width: 16,
                                  height: 16,
                                ),
                                const Text(
                                  'View Website',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ZoomTapAnimation(
                        onTap: () {
                          setState(() {
                            isAbout = true;
                            isPost = false;
                            isJobs = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                isAbout ? Constantcolors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'About us',
                              style: TextStyle(
                                color: isAbout
                                    ? Colors.white
                                    : Constantcolors.mainColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ZoomTapAnimation(
                        onTap: () {
                          setState(() {
                            isAbout = false;
                            isPost = true;
                            isJobs = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                isPost ? Constantcolors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Post',
                              style: TextStyle(
                                color: isPost
                                    ? Colors.white
                                    : Constantcolors.mainColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ZoomTapAnimation(
                        onTap: () {
                          setState(() {
                            isAbout = false;
                            isPost = false;
                            isJobs = true;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                isJobs ? Constantcolors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Jobs',
                              style: TextStyle(
                                color: isJobs
                                    ? Colors.white
                                    : Constantcolors.mainColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Flexible(
                fit: FlexFit.loose,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (isAbout) const AboutUsWidget(),
                      if (isPost) const PostWidget(),
                      if (isJobs) Expanded(child: const JobWidgetForCompany()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
