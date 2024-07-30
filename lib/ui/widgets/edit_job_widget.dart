import 'package:aytijobs/data/models/job.dart';
import 'package:flutter/material.dart';

class EditJobWidget extends StatefulWidget {
  final String job;
  final String title;
  const EditJobWidget({super.key, required this.title, required this.job});

  @override
  State<EditJobWidget> createState() => _EditJobWidgetState();
}

class _EditJobWidgetState extends State<EditJobWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              widget.job,
              style: const TextStyle(
                  color: Color(0xFF524B6B),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            trailing: Image.asset(
              'assets/icons/edit.png',
              width: 24,
              height: 24,
            )),
      ],
    );
  }
}
