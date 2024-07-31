import 'package:aytijobs/data/models/education.dart';
import 'package:aytijobs/ui/widgets/dataForm.dart';
import 'package:aytijobs/ui/widgets/profile_widgets/education_all_in_one.dart';
import 'package:aytijobs/ui/widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class EducationScreen extends StatefulWidget {
  Education? education;
  EducationScreen({super.key, this.education});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  final _formKey = GlobalKey<FormState>();
  final educationLevelController = TextEditingController();
  final institutionNameController = TextEditingController();
  final fieldOfStudyController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final studyDescController = TextEditingController();
  bool isCurrentlyPosition = false;

  @override
  void initState() {
    super.initState();
    if (widget.education != null) {
      educationLevelController.text = widget.education!.levelOfEducation;
      institutionNameController.text = widget.education!.institutionName;
      fieldOfStudyController.text = widget.education!.fieldOfStudy;
      startDateController.text = widget.education!.startDate.toString();
      endDateController.text = widget.education!.endDate.toString();
      studyDescController.text = widget.education!.studyDesc;
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height:
                    MediaQuery.of(context).size.height - kToolbarHeight - 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Add Education',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Constantcolors.mainColor,
                      ),
                    ),
                    EducationAllInOne(
                      controller: educationLevelController,
                      title: 'Level of education',
                      filledColor: Colors.white,
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter level of education';
                        }
                        return null;
                      },
                      labelText: 'level of education',
                    ),
                    EducationAllInOne(
                      controller: institutionNameController,
                      filledColor: Colors.white,
                      title: 'Institution name',
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter Institution name';
                        }
                        return null;
                      },
                      labelText: 'institution name',
                    ),
                    EducationAllInOne(
                      controller: fieldOfStudyController,
                      filledColor: Colors.white,
                      title: 'Field of study',
                      validatorfunc: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter field of study';
                        }
                        return null;
                      },
                      labelText: 'field of study',
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
                  controller: studyDescController,
                  maxLines: 5,
                  filledColor: Colors.white,
                  validatorfunc: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter description';
                    }
                    return null;
                  },
                  hintText: 'Write additional information here',
                ),
                const SizedBox(height: 20),
                widget.education != null
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  child: DateForm(
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
                                onTap: () =>
                                    _selectDate(context, endDateController),
                                child: AbsorbPointer(
                                  child: DateForm(
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
                      controller: studyDescController,
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
                    widget.education != null
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
          ),
        ),
      ),
    );
  }
}
