// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class DateForm extends StatelessWidget {
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  DateForm(
      {super.key,
      required this.controller,
      this.filledColor,
      this.labelText,
      this.validatorfunc,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: TextFormField(
        controller: controller,
        validator: validatorfunc,
        maxLines: maxLines,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          filled: true,
          fillColor: filledColor,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
