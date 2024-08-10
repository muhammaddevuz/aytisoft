// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.upload_file,
            color: Colors.purple.shade700,
          ),
          SizedBox(width: 10.0),
          Text(
            'Upload CV/Resume',
            style: TextStyle(
              color: Colors.purple.shade700,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
