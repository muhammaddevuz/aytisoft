// ignore: file_names
import 'package:aytijobs/data/models/appretiation.dart';
import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class AppreciationScreen extends StatefulWidget {
  final Appretiation? appretiation;
  const AppreciationScreen({super.key, this.appretiation});

  @override
  State<AppreciationScreen> createState() => _AppreciationScreenState();
}

class _AppreciationScreenState extends State<AppreciationScreen> {
  final _formKey = GlobalKey<FormState>();
  final awardNameController = TextEditingController();
  final categoryController = TextEditingController();
  final endDateController = TextEditingController();
  final descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.appretiation != null) {
      awardNameController.text = widget.appretiation!.awardName;
      categoryController.text = widget.appretiation!.achievementCategory;
      endDateController.text = widget.appretiation!.endDate.toString();
      descController.text = widget.appretiation!.appretiationDesc;
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
                'Add Apprecation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Constantcolors.mainColor,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Award name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constantcolors.mainColor,
                ),
              ),
              const SizedBox(height: 10),
              Textfieldform(
                controller: awardNameController,
                filledColor: Colors.white,
                validatorfunc: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter award name';
                  }
                  return null;
                },
                hintText: 'Award name',
              ),
              const SizedBox(height: 10),
              Text(
                'Category',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constantcolors.mainColor,
                ),
              ),
              const SizedBox(height: 10),
              Textfieldform(
                controller: categoryController,
                filledColor: Colors.white,
                validatorfunc: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter category name';
                  }
                  return null;
                },
                hintText: 'Category',
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
                              hintText: 'End Date',
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
                hintText: 'Write additional information here',
              ),
              const SizedBox(height: 20),
              widget.appretiation != null
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
