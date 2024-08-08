import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/widgets/job_widget/ad_job.dart';
import 'package:aytijobs/ui/widgets/job_widget/type_of_job.dart';
import 'package:aytijobs/ui/widgets/job_widget/vacansy.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 200,
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                'Orlando Diggs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              radius: 36,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const AdJob(),
                  const TypeOfJob(),
                  const Text(
                    'Recent Job List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
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
                return Vacansy(job: job);
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
