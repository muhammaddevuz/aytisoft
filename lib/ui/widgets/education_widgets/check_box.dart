// ignore_for_file: prefer_const_constructors_in_immutables

import '../../../logic/cubits/education/education_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, bool>(
      builder: (context, isCurrentlyPosition) {
        return Checkbox(
          value: isCurrentlyPosition,
          onChanged: (value) {
            context.read<EducationCubit>().toggleCheck();
          },
        );
      },
    );
  }
}