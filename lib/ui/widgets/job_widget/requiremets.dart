import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Requiremets extends StatelessWidget {
  const Requiremets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Requiremets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Gap(15),
        Text(
          'º Sed ut perspiciatis unde omnis iste natus error sit.',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Gap(15),
        Text(
          'º Sed ut perspiciatis unde omnis iste natus error sit.',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Gap(15),
        Text(
          'º Sed ut perspiciatis unde omnis iste natus error sit.',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Gap(15),
        Text(
          'º Sed ut perspiciatis unde omnis iste natus error sit.',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
