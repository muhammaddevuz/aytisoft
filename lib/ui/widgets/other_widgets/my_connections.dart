import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyConnections extends StatelessWidget {
  const MyConnections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 46,
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                const Gap(10),
                const Text(
                  'Google Inc',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                const Text(
                  '1 M folowers',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Gap(10),
                ElevatedButton(onPressed: () {}, child: const Text("Follow"))
              ],
            ),
          );
        
  }
}