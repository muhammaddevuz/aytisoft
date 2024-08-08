// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/screens/other_screens/company_description_screen.dart';
import 'package:aytijobs/ui/widgets/job_widget/facilities.dart';
import 'package:aytijobs/ui/widgets/job_widget/informations.dart';
import 'package:aytijobs/ui/widgets/job_widget/requiremets.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class DescriptionVacansyScreen extends StatefulWidget {
  final Job job;
  const DescriptionVacansyScreen({super.key, required this.job});

  @override
  State<DescriptionVacansyScreen> createState() =>
      _DescriptionVacansyScreenState();
}

class _DescriptionVacansyScreenState extends State<DescriptionVacansyScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      ZoomTapAnimation(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CompanyDescriptionScreen();
                              },
                            ),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 85,
                        ),
                      ),
                      const Gap(15),
                      Text(
                        widget.job.position,
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
                      widget.job.company,
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
                      widget.job.location,
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
                Text(
                  'Job Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Constantcolors.mainColor,
                  ),
                ),
                Container(
                  child: Text(
                    widget.job.descriprion,
                    maxLines: _isExpanded ? null : 5,
                    overflow: _isExpanded
                        ? TextOverflow.visible
                        : TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                ),
                if (widget.job.descriprion.length > 100)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Card(
                      elevation: 3,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constantcolors.purpleColor,
                        ),
                        child: Text(_isExpanded ? "Read less" : "Read more"),
                      ),
                    ),
                  ),
                const Gap(25),
                Requiremets(),
                if (_isExpanded) ...[
                  const Gap(25),
                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Location after choosing',
                    style: TextStyle(fontSize: 12),
                  ),
                  const Gap(20),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.amber,
                  ),
                  const Gap(20),
                  const Informations(),
                  Facilities(),
                  Gap(30),
                  ZoomTapAnimation(
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Constantcolors.mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'Apply Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
