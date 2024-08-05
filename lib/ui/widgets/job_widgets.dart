import '../../data/models/job.dart';
import 'package:flutter/material.dart';

class JobWidgets extends StatefulWidget {
  final Job? job;
  final String title;
  const JobWidgets({super.key, required this.title, this.job});

  @override
  State<JobWidgets> createState() => _JobWidgetsState();
}

class _JobWidgetsState extends State<JobWidgets> {
  bool isJobbed = false;
  @override
  void initState() {
    super.initState();
    if (widget.job != null) {
      isJobbed = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFD6AD),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      color: Color(0xFFFF9228),
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
