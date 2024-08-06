// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({super.key, required this.isNotify});
  bool isNotify;
  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Colors.green,
      value: widget.isNotify,
      onChanged: (value) {
        widget.isNotify = value;
        setState(() {});
      },
    );
  }
}
