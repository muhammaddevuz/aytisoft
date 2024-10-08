import '../textFieldForm.dart';
import '../../../utils/constant_colors.dart';
import '../../../utils/extension.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EducationAllInOne extends StatelessWidget {
  String title;
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  final void Function(String?)? onChanged;
  EducationAllInOne(
      {super.key,
      required this.controller,
      required this.title,
      this.filledColor,
      this.labelText,
      this.maxLines,
      this.validatorfunc,
      this.onChanged});

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
          onChanged: onChanged,
          controller: controller,
          filledColor: filledColor,
          validatorfunc: validatorfunc,
          hintText: labelText,
        ),
      ],
    );
  }
}
