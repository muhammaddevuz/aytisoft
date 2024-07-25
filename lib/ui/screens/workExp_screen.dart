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
  final titleController = TextEditingController();
  final companyController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final descController = TextEditingController();

  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Processing Data')),
      );
    }
  }

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
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
                controller: titleController,
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
                controller: companyController,
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
                        GestureDetector(
                          onTap: () => _selectDate(context, startDateController),
                          child: AbsorbPointer(
                            child: Textfieldform(
                              controller: startDateController,
                              filledColor: Colors.white,
                              validatorfunc: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter start date';
                                }
                                return null;
                              },
                              labelText: 'Start Date',
                            ),
                          ),
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
                        GestureDetector(
                          onTap: () => _selectDate(context, endDateController),
                          child: AbsorbPointer(
                            child: Textfieldform(
                              controller: endDateController,
                              filledColor: Colors.white,
                              validatorfunc: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter end date';
                                }
                                return null;
                              },
                              labelText: 'End Date',
                            ),
                          ),
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
                        value = !value!;
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
                controller: descController,
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
