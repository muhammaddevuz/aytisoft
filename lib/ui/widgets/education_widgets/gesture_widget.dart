import 'package:aytijobs/ui/widgets/other_widgets/search_widget.dart';
import 'package:aytijobs/utils/extension.dart';
import 'package:aytijobs/utils/search_queries.dart';
import 'package:flutter/material.dart';

class GestureWidget extends StatelessWidget {
  final String title;
  final Color? filledColor;
  final String? labelText;
  final int? maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  final Future<void> Function()? onTap;

  GestureWidget({
    super.key,
    required this.controller,
    required this.title,
    this.filledColor,
    this.labelText,
    this.maxLines,
    this.validatorfunc,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: filledColor ?? Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: Text(
                labelText ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
