import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/screens/saved_screens/nothing_job_screen.dart';
import 'package:aytijobs/ui/widgets/job_widget/vacansy.dart';
import 'package:aytijobs/ui/widgets/profile_widgets/saved_jobs.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SaveJobScreen extends StatelessWidget {
  const SaveJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Save Job'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NothingJobScreen();
                  },
                ),
              );
            },
            child: Text(
              "Delete all",
              style: TextStyle(
                color: Constantcolors.darkOrange,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final job = Job(
            position: 'Somsachi',
            id: UniqueKey().toString(),
            type_workspace: 'type_workspace',
            location: 'Tashkent',
            company: 'Google',
            type_employment: 'type_employment',
            descriprion:
                'desTempor cillum occaecat sunt est occaecat et ea elit.Nulla fugiat labore duis cLaborum fugiat aute consectetur incididunt duis adipisicing dolore pariatur.Non ea ut minim quis ullamco culpa et sit ullamco anim ea nisi.onsectetur quis elit.Laborum ad duis Lorem non labore.Reprehenderit sit minim velit nostrud pariatur.Aliquip eiusmod sReprehenderit culpa ea tempor anim dolor veniam ex.pMagna est non nisi id tempor non.Duis exercitation enim sit veniam est nostrud incididunt pariatur eiusmod ipsum nostrud veniam nulla ad.Nostrud laborum qui mollit ex sit eu in non velit.Laborum laborum sit sit pariatur consequat aute culpa.it Lorem non enim dolorQui aliquip eu minim veniam nulla consectetur do eiusmod amet.Amet minim nostrud esse sit reprehenderit magna et quis dolor quis voluptate ex dolore..',
          );
          return SavedJobs(job: job);
        },
      ),
    );
  }
}
