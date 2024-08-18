import 'package:aytijobs/ui/screens/search_screen/nothing_filter_screen.dart';
import 'package:aytijobs/ui/widgets/other_widgets/all_in_one.dart';
import 'package:aytijobs/ui/widgets/other_widgets/salary_slider.dart';
import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:aytijobs/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});
  final categorycontroller = TextEditingController();
  final subcategorycontroller = TextEditingController();
  final locationcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Filter",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AllInOne(
              controller: categorycontroller,
              title: 'Category',
              labelText: 'Design',
              filledColor: Colors.white,
            ),
            AllInOne(
              controller: subcategorycontroller,
              title: 'Sub Category',
              labelText: 'UI/UX Design',
              filledColor: Colors.white,
            ),
            AllInOne(
              controller: locationcontroller,
              title: 'Location',
              labelText: 'California',
              filledColor: Colors.white,
            ),
            20.sH(),
            SalarySlider(),
            20.sH(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Full time'),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Card(
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Part time'),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Card(
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Constantcolors.orange,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text('Remote'),
                    ),
                  ),
                ),
              ],
            ),
            150.sH(),
            ZoomTapAnimation(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NothingFilterScreen();
                    },
                  ),
                );
              },
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Constantcolors.mainColor,
                    borderRadius: BorderRadius.circular(10),
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
        ),
      ),
    );
  }
}
