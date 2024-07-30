import 'package:aytijobs/ui/screens/adding_job_screen/add_job_screen.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddJobScreen(
                  // job: Job(
                  //     position: 'assitant',
                  //     id: UniqueKey().toString(),
                  //     type_workspace: '1qwerty',
                  //     location: 'Usa,Tashkent',
                  //     company: 'Olma',
                  //     type_employment: 'Olmachi',
                  //     descriprion:
                  //         'Laboris est veniam qui magna officia aute eu consectetur aute.'),
                );
              },
            ),
          );
        },
        child: const Text("Add job"),
      ),
    ));
  }
}
