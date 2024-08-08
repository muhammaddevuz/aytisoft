// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/widgets/job_widget/facilities.dart';
import 'package:aytijobs/ui/widgets/job_widget/informations.dart';
import 'package:aytijobs/ui/widgets/job_widget/requiremets.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
                      'Califronia',
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
                    ZoomTapAnimation(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              ' + Follow',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ZoomTapAnimation(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/icons/web.png',
                                  width: 16,
                                  height: 16,
                                ),
                                Text(
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
                  ],
                ),
                Gap(20),
                Text(
                  ' About Company',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Constantcolors.mainColor,
                  ),
                ),
                Text(
                    'Aliqua deserunt dolore aliquip aliqua incididunt Excepteur est eiusmod ipsum officia sint et exercitation dolor dolor voluptate.Dolore nisi aliqua laborum veniam ut voluptate proident sit culpa amet proident ad ad.Eiusmod voluptate sit aliquip commodo fugiat adipisicing laborum minim.Mollit reprehenderit fugiat aliquip nostrud sunt sunt quis ullamco fugiat.Irure veniam irure laborum elit dolor adipisicing commodo nulla officia anim ea aute fugiat tempor.Enim ipsum voluptate irure do nulla fugiat.Enim incididunt commodo consequat est velit cillum laboris sunt commodo do reprehenderit occaecat Lorem est.Amet irure magna ullamco qui cillum sunt magna ea ipsum nisi laboris nostrud.Et consectetur laborum pariatur excepteur elit magna commodo.Aliquip amet sint fugiat non voluptate eiusmod labore in culpa.Pariatur sint occaecat consectetur culpa non amet officia occaecat reprehenderit nisi nostrud ex velit.Labore id laborum fugiat esse enim ex culpa sint eu.Laboris nostrud sit eu sint laboris.Dolor nulla do eiusmod tempor.Non Lorem fugiat commodo ad cillum cillum ullamco exercitation esse.Laborum deserunt id eu duis nostrud occaecat.PExcepteur ullamco eiusmod dolor consequat deserunt Lorem sunt.Sunt magna reprehenderit eiusmod laboris elit duis ea et et ea elit id consequat ut.Consequat fugiat ullamco magna ullamco ea nisi dolore commodo quis ex anim exercitation culpa.pSunt aliqua qui adipisicing irure culpa ea non qui non ullamco commodo.Laborum proident in proident ut mollit deserunt in mollit non fugiat est quis aliquip excepteur.'),
                const Gap(25),
                Gap(20),
                const Informations(),
                Facilities(),
                Gap(30),
                const Text(
                  'Comapny Gallery',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(20),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.amber,
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      child: Image.asset(
                        'assets/icons/save_yellow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Expanded(
                      child: ZoomTapAnimation(
                        child: Card(
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Constantcolors.mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
