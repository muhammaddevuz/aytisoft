import 'package:flutter/material.dart';

class Textfieldform extends StatelessWidget {
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  Textfieldform(
      {super.key,
      required this.controller,
      this.filledColor,
      this.labelText,
      this.validatorfunc,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validatorfunc,
      maxLines: maxLines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        filled: true,
        fillColor: filledColor,
        labelText: labelText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
