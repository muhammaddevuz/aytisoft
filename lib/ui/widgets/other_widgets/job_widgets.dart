import '../../../data/models/job.dart';
import 'package:flutter/material.dart';

class JobWidgets extends StatefulWidget {
  final Job? job;
  final String title;
  final bool isEdited; 

  const JobWidgets({
    super.key,
    required this.title,
    this.job,
    this.isEdited = false, // Default value is false
  });

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
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
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
                  // Conditionally render the icon or the edit image
                  child: widget.isEdited
                      ? Image.asset(
                          'assets/icons/edit.png',
                          width: 24,
                          height: 24,
                        )
                      : const Icon(
                          Icons.add,
                          color: Color(0xFFFF9228),
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
