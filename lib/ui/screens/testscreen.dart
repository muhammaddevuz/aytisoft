import 'package:aytijobs/data/models/exp.dart';
import 'package:aytijobs/ui/screens/workExp_screen.dart';
import 'package:flutter/material.dart';

class Testscreen extends StatelessWidget {
  const Testscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WorkexpScreen();
                },
              ),
            );
          },
          child: Text("Go to Experinece"),
        ),
      ),
    );
  }
}
