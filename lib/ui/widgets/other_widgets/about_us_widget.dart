import 'package:aytijobs/ui/widgets/job_widget/facilities.dart';
import 'package:aytijobs/ui/widgets/job_widget/informations.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' About Company',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Constantcolors.mainColor,
          ),
        ),
        const Text(
            'Aliqua deserunt dolore aliquip aliaqua incididunt Excepteur est eiusmod ipsum officia sint et exercitation dolor dolor voluptate.Dolore nisi aliqua laborum veniam ut voluptate proident sit culpa amet proident ad ad.Eiusmod voluptate sit aliquip commodo fugiat adipisicing laborum minim.Mollit reprehenderit fugiat aliquip nostrud sunt sunt quis ullamco fugiat.Irure veniam irure laborum elit dolor adipisicing commodo nulla officia anim ea aute fugiat tempor.Enim ipsum voluptate irure do nulla fugiat.Enim incididunt commodo consequat est velit cillum laboris sunt commodo do reprehenderit occaecat Lorem est.Amet irure magna ullamco qui cillum sunt magna ea ipsum nisi laboris nostrud.Et consectetur laborum pariatur excepteur elit magna commodo.Aliquip amet sint fugiat non voluptate eiusmod labore in culpa.Pariatur sint occaecat consectetur culpa non amet officia occaecat reprehenderit nisi nostrud ex velit.Labore id laborum fugiat esse enim ex culpa sint eu.Laboris nostrud sit eu sint laboris.Dolor nulla do eiusmod tempor.Non Lorem fugiat commodo ad cillum cillum ullamco exercitation esse.Laborum deserunt id eu duis nostrud occaecat.PExcepteur ullamco eiusmod dolor consequat deserunt Lorem sunt.Sunt magna reprehenderit eiusmod laboris elit duis ea et et ea elit id consequat ut.Consequat fugiat ullamco magna ullamco ea nisi dolore commodo quis ex anim exercitation culpa.pSunt aliqua qui adipisicing irure culpa ea non qui non ullamco commodo.Laborum proident in proident ut mollit deserunt in mollit non fugiat est quis aliquip excepteur.'),
        const Gap(25),
        const Gap(20),
        const Informations(),
        const Facilities(),
        const Gap(30),
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
        const Gap(20),
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
                    child: const Text(
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
    );
  }
}
