import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Textfieldform extends StatelessWidget {
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  Widget? preficon;
  Widget? sufficon;
  TextEditingController controller;

  final String? Function(String?)? validatorfunc;
  Textfieldform({
    super.key,
    required this.controller,
    this.filledColor,
    this.labelText,
    this.validatorfunc,
    this.maxLines,
    this.preficon,
    this.sufficon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      controller: controller,
      validator: validatorfunc,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: preficon,
        suffixIcon: sufficon,
        contentPadding: const EdgeInsets.all(10),
        alignLabelWithHint: true,
        filled: true,
        fillColor: filledColor,
        labelText: labelText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
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
