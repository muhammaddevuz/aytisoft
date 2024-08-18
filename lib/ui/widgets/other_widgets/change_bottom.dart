// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aytijobs/ui/screens/adding_job_screens/add_job_screen.dart';
import 'package:aytijobs/ui/widgets/other_widgets/radio_button.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Bottoms {
  static void showBottomSheetChange(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Undo Changes?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Are you sure you want to change what you entered?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text(
                        "Continue Filling",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Undo Changes",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xffD6CDFE),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetSave(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Remove Work Experience ?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Are you sure you want to delete this work experience?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text(
                        "Continue Filling",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Undo Changes",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xffD6CDFE),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetTypeOfWorks(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Choose the type of workplace",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Decide and choose the type of place to work according to what you want",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomRadioButton(
                title: 'On-Site',
                subtitle: 'Employees come to work',
                isSelected: true,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Hybrid',
                subtitle: 'Employees work directly on site or off site',
                isSelected: false,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Remotw',
                subtitle: 'Employees working off site',
                isSelected: false,
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetTypeOfempolyment(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 550,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Choose Job Type",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Determine and choose the type of work according to what you want",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomRadioButton(
                title: 'Full-time',
                isSelected: true,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Part-time',
                isSelected: false,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Contract',
                isSelected: false,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Tempory',
                isSelected: false,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Volunteer',
                isSelected: false,
                onTap: () {},
              ),
              CustomRadioButton(
                title: 'Apprenticeship',
                isSelected: false,
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetLogout(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Log out",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Are you sure you want to leave?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xffD6CDFE),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetAdding(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What would you like to add",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Would you like to post your tips and experiences or create a job?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text(
                        "Post",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Constantcolors.mainColor,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AddJobScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Make a job",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xffD6CDFE),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetSaveJob(BuildContext context) {
    bool isdismiss = false;
    showModalBottomSheet(
      isDismissible: isdismiss,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              ZoomTapAnimation(
                onTap: () {
                  isdismiss = true;
                },
                child: Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ZoomTapAnimation(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset('assets/icons/send.png'),
                  title: Text("Send message"),
                ),
              ),
              ZoomTapAnimation(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                      'assets/images/account_screen_icons/share_icon.png'),
                  title: Text("Shared"),
                ),
              ),
              ZoomTapAnimation(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.delete),
                  title: Text("Shared"),
                ),
              ),
              ZoomTapAnimation(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.done),
                  title: Text("Apply"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
