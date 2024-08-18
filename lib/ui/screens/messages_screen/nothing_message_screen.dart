import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class NothingMessageScreen extends StatelessWidget {
  const NothingMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/nothing_sms.png'),
            ),
            Text(
              'No Message',
              style: TextStyle(
                fontSize: 16,
                color: Constantcolors.mainColor,
              ),
            ),
            Text(
              'You currently have no incoming messages thank you',
              style: TextStyle(
                color: Constantcolors.purpleColor,
              ),
            ),
            const SizedBox(
              height: 50,
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
                  "Create a Message",
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
    );
  }
}
