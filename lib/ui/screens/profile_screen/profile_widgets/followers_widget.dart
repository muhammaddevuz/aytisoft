import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FollowersWidget extends StatelessWidget {
  String amount;
  String title;
  FollowersWidget({super.key, required this.amount, required this.title});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        RichText(
          text:  TextSpan(
            children: [
              TextSpan(
                text: amount,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: ' $title',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
