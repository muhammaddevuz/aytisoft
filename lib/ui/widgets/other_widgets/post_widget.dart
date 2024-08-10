import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Image.asset(
                      'assets/images/google.png',
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Google",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Row(
                      children: [
                        Icon(Icons.access_time_outlined),
                        Gap(10),
                        Text("21 minuts ago"),
                      ],
                    ),
                  ),
                  const Text(
                      'desTempor cillum occaecat sunt est occaecat et ea elit.Nulla fugiat labore duis cLaborum fugiat aute consectetur incididunt duis adipisicing dolore pariatur.Non ea ut minim quis ullamco culpa et sit ullamco anim ea nisi.onsectetur quis elit.Laborum ad duis Lorem non labore.Reprehenderit sit minim velit nostrud pariatur.Aliquip eiusmod sReprehenderit culpa ea tempor anim dolor veniam ex.pMagna est non nisi id tempor non.Duis exercitation enim sit veniam est nostrud incididunt pariatur eiusmod ipsum nostrud veniam nulla ad.Nostrud laborum qui mollit ex sit eu in non velit.Laborum laborum sit sit pariatur consequat aute culpa.it Lorem non enim dolorQui aliquip eu minim veniam nulla consectetur do eiusmod amet.Amet minim nostrud esse sit reprehenderit magna et quis dolor quis voluptate ex dolore..'),
                  const Gap(20),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 165,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/player.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Gap(20),
                  const Text(
                    'What\'s it like to work at Google?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Youtube.com',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                color: Constantcolors.purpleColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Gap(5),
                          Text('12')
                        ],
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/comment.png',
                            width: 26,
                            height: 26,
                          ),
                          const Gap(5),
                          const Text('12')
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/account_screen_icons/share_icon.png',
                        width: 26,
                        height: 26,
                      ),
                      const Gap(5),
                      const Text('12')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
