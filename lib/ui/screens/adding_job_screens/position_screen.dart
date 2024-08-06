import '../../widgets/profile_widgets/all_in_one.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PositionScreen extends StatefulWidget {
  const PositionScreen({super.key});

  @override
  State<PositionScreen> createState() => _PositionScreenState();
}

class _PositionScreenState extends State<PositionScreen> {
  final postioncontroller = TextEditingController();
  final List<String> jobPositions = [
    'Software Engineer',
    'Product Manager',
    'Data Scientist',
    'UX/UI Designer',
    'Marketing Specialist',
    'Sales Manager',
    'HR Manager',
    'DevOps Engineer',
    'Customer Support Specialist',
    'Business Analyst'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AllInOne(
              controller: postioncontroller,
              title: 'Position',
              filledColor: Colors.white,
              preficon: Icon(Icons.search),
              sufficon: Icon(Icons.remove_circle_outline_sharp),
              labelText: 'Search',
            ),
            Gap(20),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Gap(20);
                },
                itemCount: jobPositions.length,
                itemBuilder: (context, index) {
                  return Text(
                    jobPositions[index],
                    style: TextStyle(fontSize: 16),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
