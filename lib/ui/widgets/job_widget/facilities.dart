import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  const Facilities({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          height: 20,
        ),
         Text(
          'Facilities and Others',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º Dental',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º Technical Cartification',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º Meal Allowance',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º Transport Allowance',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º Regular Hours',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
         SizedBox(
          height: 15,
        ),
         Text(
          'º  Mondays-Fridays ',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
