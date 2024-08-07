import 'package:aytijobs/logic/blocs/education/education_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'package:aytijobs/logic/cubits/education/education_cubit.dart';
import 'package:aytijobs/logic/cubits/education/education_form_cubit.dart';
import 'package:aytijobs/logic/cubits/education/education_form_state.dart';
import 'package:aytijobs/ui/widgets/education_widgets/gesture_widget.dart';
import 'package:aytijobs/ui/widgets/search_widget.dart';
import 'package:aytijobs/utils/search_queries.dart';
import '../../../data/models/education.dart';
import '../../widgets/education_widgets/check_box.dart';
import '../../widgets/education_widgets/start_end_date_widget.dart';
import '../../widgets/textFieldForm.dart';
import '../../../utils/constant_colors.dart';

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

  Future<void> _selectFromSearchWidget(
      String title, TextEditingController controller) async {
    final selectedValue = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => SearchWidget(
          title: title,
          controller: controller,
          originalListDatas: SearchQueries.educationLevelsUzbekistan,
        ),
      ),
    );
    if (selectedValue != null) {
      final educationFormCubit = context.read<EducationFormCubit>();
      if (title == 'Level of Education') {
        educationFormCubit.updateLevelOfEducation(selectedValue);
      } else if (title == 'Institution Name') {
        educationFormCubit.updateInstitutionName(selectedValue);
      } else {
        educationFormCubit.updateFieldOfStudy(selectedValue);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final educationFormCubit = context.read<EducationFormCubit>();
    return Scaffold(
        body: BlocListener<EducationFormCubit, EducationFormState>(
      listener: (context, state) {
        educationLevelController.text = state.levelOfEducation;
        institutionNameController.text = state.institutionName;
        fieldOfStudyController.text = state.fieldOfStudy;
      },
      child: BlocBuilder<EducationFormCubit, EducationFormState>(
        builder: (context, state) {
          void submit() {
            bool check = educationFormCubit.state.levelOfEducation.isNotEmpty &&
                educationFormCubit.state.institutionName.isNotEmpty &&
                educationFormCubit.state.fieldOfStudy.isNotEmpty &&
                startDateController.text.isNotEmpty &&
                endDateController.text.isNotEmpty &&
                educationFormCubit.state.description.isNotEmpty;
            educationFormCubit.updateDesciptionResult(studyDescController.text);
            if (_formKey.currentState!.validate() && check) {
              _formKey.currentState!.save();

              Education education = Education(
                levelOfEducation: educationFormCubit.state.levelOfEducation,
                institutionName: educationFormCubit.state.institutionName,
                fieldOfStudy: educationFormCubit.state.fieldOfStudy,
                startDate: DateTime.parse(startDateController.text),
                endDate: DateTime.parse(endDateController.text),
                currentlyStudying: context.read<EducationCubit>().state,
                studyDesc: studyDescController.text,
              );
              educationFormCubit.updateEducationResult(education);
              
              //!--------------
            }
          }

          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height -
                        kToolbarHeight -
                        15,
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
                        GestureWidget(
                          controller: educationLevelController,
                          title: 'Level of education',
                          filledColor: Colors.white,
                          validatorfunc: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter level of education';
                            }
                            return null;
                          },
                          labelText: state.levelOfEducation.isEmpty
                              ? 'level of education'
                              : state.levelOfEducation,
                          onTap: () => _selectFromSearchWidget(
                              'Level of Education', educationLevelController),
                        ),
                        GestureWidget(
                          controller: institutionNameController,
                          filledColor: Colors.white,
                          title: 'Institution name',
                          validatorfunc: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter Institution name';
                            }
                            return null;
                          },
                          labelText: state.institutionName.isEmpty
                              ? 'institution name'
                              : state.institutionName,
                          onTap: () => _selectFromSearchWidget(
                              'Institution Name', institutionNameController),
                        ),
                        GestureWidget(
                          controller: fieldOfStudyController,
                          filledColor: Colors.white,
                          title: 'Field of study',
                          validatorfunc: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter field of study';
                            }
                            return null;
                          },
                          labelText: state.fieldOfStudy.isEmpty
                              ? 'field of study'
                              : state.fieldOfStudy,
                          onTap: () => _selectFromSearchWidget(
                              'Field of Study', fieldOfStudyController),
                        ),
                        StartEndDateWidget(
                            startDate: startDateController,
                            endDate: endDateController),
                        Row(
                          children: [
                            CheckBoxWidget(),
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
                          hintText: 'Write additional information here',
                        ),
                        const SizedBox(height: 20),
                        (widget.education != null)
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ZoomTapAnimation(
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<EducationCubit>()
                                            .setFalse();
                                        educationFormCubit
                                            .updateFieldOfStudy('');
                                        educationFormCubit
                                            .updateInstitutionName('');
                                        educationFormCubit
                                            .updateLevelOfEducation('');
                                        educationFormCubit
                                            .updateDesciptionResult('');
                                      },
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
                                  ),
                                  ZoomTapAnimation(
                                    child: GestureDetector(
                                      onTap: submit,
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
          );
        },
      ),
    ));
  }
}
