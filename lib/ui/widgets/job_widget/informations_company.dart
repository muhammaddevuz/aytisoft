import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InformationsCompany extends StatelessWidget {
  const InformationsCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Website',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          'https://jamshids-portfolio.netlify.app',
          style: TextStyle(fontSize: 12),
        ),
        Gap(10),
        Text(
          'Industry',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          'Internet product',
          style: TextStyle(fontSize: 12),
        ),
        Gap(10),
        Text(
          'Employee Size',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          '13220 Empolyees',
          style: TextStyle(fontSize: 12),
        ),
        Gap(10),
        Text(
          'Head office',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          'Mountain View, California, Amerika Serikat',
          style: TextStyle(fontSize: 12),
        ),
        Gap(10),
        Text(
          'Specialization',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          'Search technology, Web computing, Software and Online advertising',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
