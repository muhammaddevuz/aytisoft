// ignore_for_file: must_be_immutable

import 'package:aytijobs/ui/widgets/dataForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class ProfileDate extends StatefulWidget {
  TextEditingController controller;
  ProfileDate({super.key, required this.controller});

  @override
  State<ProfileDate> createState() => _ProfileDateState();
}

class _ProfileDateState extends State<ProfileDate> {
  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Date of birth',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Constantcolors.mainColor,
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => _selectDate(context, widget.controller),
          child: AbsorbPointer(
            child: DateForm(
              controller: widget.controller,
              filledColor: Colors.white,
              validatorfunc: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter end date';
                }
                return null;
              },
              labelText: 'Enter Date',
            ),
          ),
        ),
      ],
    );
  }
}
