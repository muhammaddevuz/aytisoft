import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class NothingJobScreen extends StatelessWidget {
  const NothingJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                'No Savings',
                style: TextStyle(
                  fontSize: 16,
                  color: Constantcolors.mainColor,
                ),
              ),
              Text(
                "You don't have any jobs saved, please find it in search to save jobs",
                style: TextStyle(
                  color: Constantcolors.purpleColor,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset('assets/images/nothing_save.png'),
              ),
              Card(
                elevation: 5,
                child: Container(
                  width: 215,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF130160),
                  ),
                  child: const Text(
                    "Find a Job",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
