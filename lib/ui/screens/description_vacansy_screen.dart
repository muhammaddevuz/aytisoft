import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DescriptionVacansyScreen extends StatefulWidget {
  final Job job;
  const DescriptionVacansyScreen({super.key, required this.job});

  @override
  State<DescriptionVacansyScreen> createState() =>
      _DescriptionVacansyScreenState();
}

class _DescriptionVacansyScreenState extends State<DescriptionVacansyScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 85,
                      ),
                      const Gap(15),
                      Text(
                        widget.job.position,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Constantcolors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.job.company,
                      style: TextStyle(
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    Text(
                      'º',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    Text(
                      widget.job.location,
                      style: TextStyle(
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    Text(
                      'º',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    Text(
                      '1 day ago',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Text(
                  'Job Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Constantcolors.mainColor,
                  ),
                ),
                Container(
                  child: Text(
                    widget.job.descriprion,
                    maxLines: _isExpanded ? null : 5,
                    overflow: _isExpanded
                        ? TextOverflow.visible
                        : TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Constantcolors.mainColor,
                    ),
                  ),
                ),
                if (widget.job.descriprion.length > 100)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Card(
                      elevation: 3,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constantcolors.purpleColor,
                        ),
                        child: Text(_isExpanded ? "Read less" : "Read more"),
                      ),
                    ),
                  ),
                const Gap(25),
                const Text(
                  'Requiremets',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Gap(15),
                const Text(
                  'º Sed ut perspiciatis unde omnis iste natus error sit.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Gap(15),
                const Text(
                  'º Sed ut perspiciatis unde omnis iste natus error sit.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Gap(15),
                const Text(
                  'º Sed ut perspiciatis unde omnis iste natus error sit.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Gap(15),
                const Text(
                  'º Sed ut perspiciatis unde omnis iste natus error sit.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Gap(25),
                const Text(
                  'Location',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Locaton after choosing',
                  style: TextStyle(fontSize: 12),
                ),
                const Gap(20),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.amber,
                ),
                const Gap(20),
                const Text(
                  'Informations',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(20),
                const Text(
                  'Positions',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                Text(
                  widget.job.position,
                  style: const TextStyle(fontSize: 12),
                ),
                const Divider(),
                const Gap(20),
                const Text(
                  'Qualifications',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                const Text(
                  'Bachelor`s degree',
                  style: TextStyle(fontSize: 12),
                ),
                const Divider(),
                const Gap(20),
                const Text(
                  'Job Type',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                const Text(
                  'Full-time',
                  style: TextStyle(fontSize: 12),
                ),
                const Divider(),
                const Gap(20),
                const Text(
                  'Specializations',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                const Text(
                  'Desgin',
                  style: TextStyle(fontSize: 12),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
