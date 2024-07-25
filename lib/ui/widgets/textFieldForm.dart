import 'package:flutter/material.dart';

class Textfieldform extends StatelessWidget {
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  final String? Function(String?)? validatorfunc;
  Textfieldform(
      {super.key,
      this.filledColor,
      this.labelText,
      this.validatorfunc,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
