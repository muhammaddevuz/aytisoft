// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textfieldform extends StatefulWidget {
  final Color? filledColor;
  String? hintText;
  int? maxLines;
  Widget? preficon;
  Widget? sufficon;
  TextEditingController controller;
  final void Function(String?)? onChanged;

  final String? Function(String?)? validatorfunc;

  Textfieldform({
    super.key,
    required this.controller,
    this.filledColor,
    this.hintText,
    this.validatorfunc,
    this.maxLines,
    this.preficon,
    this.sufficon,
    this.onChanged,
  });

  @override
  State<Textfieldform> createState() => _TextfieldformState();
}

class _TextfieldformState extends State<Textfieldform> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      textInputAction: TextInputAction.next,
      controller: widget.controller,
      validator: widget.validatorfunc,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        prefixIcon: widget.preficon,
        suffixIcon: widget.sufficon,
        contentPadding: const EdgeInsets.all(10),
        alignLabelWithHint: true,
        filled: true,
        fillColor: widget.filledColor,
        hintText: widget.hintText,
        suffix: IconButton(
          onPressed: () {
            widget.controller.clear();
            setState(() {});
          },
          icon: const Icon(
            CupertinoIcons.xmark,
            color: Colors.black,
            size: 20,
          ),
        ),
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
      onChanged: widget.onChanged,
    );
  }
}
