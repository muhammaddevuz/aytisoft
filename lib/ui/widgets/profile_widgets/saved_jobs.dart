import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/widgets/other_widgets/change_bottom.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedJobs extends StatelessWidget {
  final Job job;
  const SavedJobs({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constantcolors.blue,
                    ),
                  ),
                  title: Text(
                    job.position,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: job.company,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        const TextSpan(
                          text: '~~',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: job.location,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Bottoms.showBottomSheetSaveJob(context);
                    },
                    icon: const Icon(CupertinoIcons.ellipsis_vertical),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '\$15k',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '/Mo',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 3,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          alignment: Alignment.center,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(job.type_employment),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Card(
                        elevation: 3,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          alignment: Alignment.center,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(job.type_workspace),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Card(
                        elevation: 3,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          alignment: Alignment.center,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Constantcolors.orange,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('Apply'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
