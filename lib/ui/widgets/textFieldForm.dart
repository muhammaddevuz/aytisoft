import 'package:flutter/material.dart';

class Textfieldform extends StatelessWidget {
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;

  final String? Function(String?)? validatorfunc;
  Textfieldform({
    super.key,
    required this.controller,
    this.filledColor,
    this.labelText,
    this.validatorfunc,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      controller: controller,
      validator: validatorfunc,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        alignLabelWithHint: true,
        filled: true,
        fillColor: filledColor,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.green),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
