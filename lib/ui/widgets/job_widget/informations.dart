import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Informations extends StatelessWidget {
  const Informations({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Informations',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         Gap(20),
         Text(
          'Positions',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         Gap(10),
        Text(
          'Somsachi',
          style:  TextStyle(fontSize: 12),
        ),
         Divider(),
         Gap(20),
         Text(
          'Qualifications',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         Gap(10),
         Text(
          'Bachelor`s degree',
          style: TextStyle(fontSize: 12),
        ),
         Divider(),
         Gap(20),
         Text(
          'Job Type',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         Gap(10),
         Text(
          'Full-time',
          style: TextStyle(fontSize: 12),
        ),
         Divider(),
         Gap(20),
         Text(
          'Specializations',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         Gap(10),
         Text(
          'Desgin',
          style: TextStyle(fontSize: 12),
        ),
         Divider(),
      ],
    );
  }
}
