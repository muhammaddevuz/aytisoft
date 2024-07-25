// ignore: file_names
import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class WorkexpScreen extends StatefulWidget {
  const WorkexpScreen({super.key});

  @override
  State<WorkexpScreen> createState() => _WorkexpScreenState();
}

class _WorkexpScreenState extends State<WorkexpScreen> {
  final _formKey = GlobalKey<FormState>();

  void submit() {
    if (_formKey.currentState!.validate()) {
      // Process the data if the form is valid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add work experience',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF150B3D),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Job title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF150B3D),
                ),
              ),
              const SizedBox(height: 10),
              Textfieldform(
                filledColor: Colors.white,
                validatorfunc: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter job title';
                  }
                  return null;
                },
                labelText: 'Title',
              ),
              const SizedBox(height: 10),
              const Text(
                'Company',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF150B3D),
                ),
              ),
              const SizedBox(height: 10),
              Textfieldform(
                filledColor: Colors.white,
                validatorfunc: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter company name';
                  }
                  return null;
                },
                labelText: 'Company',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Start Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF150B3D),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Textfieldform(
                          filledColor: Colors.white,
                          validatorfunc: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter start date';
                            }
                            return null;
                          },
                          labelText: 'Start Date',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'End Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF150B3D),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Textfieldform(
                          filledColor: Colors.white,
                          validatorfunc: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter end date';
                            }
                            return null;
                          },
                          labelText: 'End Date',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      setState(() {
                        // Handle checkbox state
                      });
                    },
                  ),
                  const Text(
                    'This is my position now',
                  ),
                ],
              ),
              const Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF150B3D),
                ),
              ),
              const SizedBox(height: 10),
              Textfieldform(
                maxLines: 5,
                filledColor: Colors.white,
                validatorfunc: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter description';
                  }
                  return null;
                },
                labelText: 'Write additional information here',
              ),
              const SizedBox(height: 20),
              Center(
                child: ZoomTapAnimation(
                  onTap: submit,
                  child: Card(
                    color: const Color(0xFF130160),
                    child: Container(
                      alignment: Alignment.center,
                      width: 270,
                      height: 70,
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
