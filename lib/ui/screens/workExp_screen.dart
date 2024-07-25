import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkexpScreen extends StatefulWidget {
  const WorkexpScreen({super.key});

  @override
  State<WorkexpScreen> createState() => _WorkexpScreenState();
}

class _WorkexpScreenState extends State<WorkexpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Add work experiense',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF150B3D),
              ),
            ),
           const SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
