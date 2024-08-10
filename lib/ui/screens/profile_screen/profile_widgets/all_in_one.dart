import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllInOne extends StatelessWidget {
  TextEditingController controller;
  String title;
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  final String? Function(String?)? validatorfunc;
  Widget? preficon;
  Widget? sufficon;
  AllInOne(
      {super.key,
      required this.controller,
      required this.title,
      this.filledColor,
      this.labelText,
      this.maxLines,
      this.validatorfunc,
      this.preficon,
      this.sufficon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          preficon: preficon,
          sufficon: sufficon,
          maxLines: maxLines,
          controller: controller,
          filledColor: filledColor,
          validatorfunc: validatorfunc,
          hintText: labelText,
        ),
      ],
    );
  }
}
