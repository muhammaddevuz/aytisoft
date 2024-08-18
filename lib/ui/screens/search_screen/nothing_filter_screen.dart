import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class NothingFilterScreen extends StatelessWidget {
  const NothingFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/images/nothing_filter.png'),
              ),
              Text(
                'No results found',
                style: TextStyle(
                  fontSize: 16,
                  color: Constantcolors.mainColor,
                ),
              ),
              Text(
                "The search could not be found, please check spelling or write another word.",
                style: TextStyle(
                  color: Constantcolors.purpleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
