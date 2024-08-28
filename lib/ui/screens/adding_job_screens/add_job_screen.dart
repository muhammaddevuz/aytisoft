// ignore_for_file: prefer_const_constructors

import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/screens/adding_job_screens/company_screen.dart';
import 'package:aytijobs/ui/screens/adding_job_screens/location_job_screen.dart';
import 'package:aytijobs/ui/screens/adding_job_screens/position_screen.dart';
import 'package:aytijobs/ui/widgets/other_widgets/change_bottom.dart';
import 'package:aytijobs/ui/widgets/other_widgets/edit_job_widget.dart';
import 'package:aytijobs/ui/widgets/other_widgets/job_widgets.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class AddJobScreen extends StatefulWidget {
  final Job? job;
  const AddJobScreen({super.key, this.job});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  final List<String> titles = [
    'Job position*',
    'Type of workplace',
    'Job location',
    'Company',
    'Employment type',
    'Description'
  ];

  bool isJobbed = false;

  late final List<String> jobs;

  @override
  void initState() {
    super.initState();
    if (widget.job != null) {
      isJobbed = true;
      jobs = [
        widget.job!.position,
        widget.job!.type_workspace,
        widget.job!.location,
        widget.job!.company,
        widget.job!.type_employment,
        widget.job!.descriprion,
      ];
    }
  }

  void _navigateToScreen(String title) async {
    switch (title) {
      case 'Job position*':
         await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PositionScreen()),
        );
        break;
      case 'Type of workplace':
        Bottoms.showBottomSheetTypeOfWorks(context);
        break;
      case 'Job location':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LocationJobScreen()),
        );
        break;
      case 'Company':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CompanyScreen()),
        );
        break;
      case 'Employment type':
        Bottoms.showBottomSheetTypeOfempolyment(context);
        break;
      case 'Description':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => DescriptionScreen()), // Your DescriptionScreen widget
        // );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Post",
              style: TextStyle(
                color: Color(0xFFFF9228),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a job',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              for (int i = 0; i < titles.length; i++)
                ZoomTapAnimation(
                  onTap: () => _navigateToScreen(titles[i]),
                  child: isJobbed
                      ? EditJobWidget(title: titles[i], job: jobs[i])
                      : JobWidgets(title: titles[i]),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
