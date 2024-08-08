import 'package:aytijobs/ui/widgets/search_widget.dart';
import 'package:aytijobs/utils/extension.dart';
import 'package:aytijobs/utils/search_queries.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GestureWidget extends StatelessWidget {
  String title;
  final Color? filledColor;
  String? labelText;
  int? maxLines;
  TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  GestureWidget(
      {super.key,
      required this.controller,
      required this.title,
      this.filledColor,
      this.labelText,
      this.maxLines,
      this.validatorfunc,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => SearchWidget(
              title: title,
              controller: controller,
              originalListDatas: SearchQueries.educationLevelsUzbekistan,
            ),
          ),
        );
      },
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
          6.sH(),
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
                labelText!,
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
