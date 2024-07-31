import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:aytijobs/utils/extension.dart';
import 'package:flutter/material.dart';

class EducationAllInOne extends StatelessWidget {
  String title;
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  EducationAllInOne({super.key, required this.controller, required this.title, this.filledColor, this.labelText, this.maxLines, this.validatorfunc});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Constantcolors.mainColor,
          ),
        ),
        30.sH(),
        Textfieldform(
          controller: controller,
          filledColor: filledColor,
          validatorfunc: validatorfunc,
          hintText: labelText,
        ),
      ],
    );
  }
}
