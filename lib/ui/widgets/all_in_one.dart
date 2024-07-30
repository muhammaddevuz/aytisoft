import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class AllInOne extends StatelessWidget {
  TextEditingController controller;
  String title;
  AllInOne({super.key, required this.controller, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Constantcolors.mainColor,
          ),
        ),
        const SizedBox(height: 10),
        Textfieldform(
          controller: controller,
          filledColor: Colors.white,
          validatorfunc: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter job title';
            }
            return null;
          },
          labelText: 'Title',
        ),
      ],
    );
  }
}
