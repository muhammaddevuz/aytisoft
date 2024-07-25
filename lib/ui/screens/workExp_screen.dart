// ignore: file_names
import 'package:aytijobs/data/models/exp.dart';
import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constantColors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class WorkexpScreen extends StatefulWidget {
  final Exp? exp;
  const WorkexpScreen({super.key, this.exp});

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

  @override
  void initState() {
    super.initState();
    if (widget.exp != null) {
      titleController.text = widget.exp!.jobTitle;
      companyController.text = widget.exp!.companyName;
      startDateController.text = widget.exp!.startDate.toString();
      endDateController.text = widget.exp!.endDate.toString();
      descController.text = widget.exp!.jonDesc;
    }
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      
    }
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
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
              Text(
                'Add work experience',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Constantcolors.mainColor,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Job title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constantcolors.mainColor,
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
              Text(
                'Company',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constantcolors.mainColor,
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
                        Text(
                          'Start Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Constantcolors.mainColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () =>
                              _selectDate(context, startDateController),
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
                        Text(
                          'End Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Constantcolors.mainColor,
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
              Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constantcolors.mainColor,
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
              widget.exp != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ZoomTapAnimation(
                          child: Card(
                            color: const Color(0xFFD6CDFE),
                            child: Container(
                              alignment: Alignment.center,
                              width: 160,
                              height: 50,
                              child: const Text(
                                "Remove",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        ZoomTapAnimation(
                          child: Card(
                            color: Constantcolors.mainColor,
                            child: Container(
                              alignment: Alignment.center,
                              width: 160,
                              height: 50,
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
                      ],
                    )
                  : Center(
                      child: ZoomTapAnimation(
                        onTap: submit,
                        child: Card(
                          color: Constantcolors.mainColor,
                          child: Container(
                            alignment: Alignment.center,
                            width: 270,
                            height: 50,
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
