// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TypeOfJob extends StatelessWidget {
  const TypeOfJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Find your job',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Gap(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(36),
              alignment: Alignment.center,
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Constantcolors.blue,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/remote.png',
                    width: 34,
                    height: 34,
                  ),
                  Text(
                    '44.5k',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Remote Job',
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 150,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constantcolors.purpleColor,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        '66.8k',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Full Time',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 150,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constantcolors.orange,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        '38.9k',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Part Time',
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Gap(20),
      ],
    );
  }
}
