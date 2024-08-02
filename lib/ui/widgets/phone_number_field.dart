import 'package:flutter/material.dart';

class PhoneNumberField extends StatefulWidget {
  final TextEditingController controller;

  PhoneNumberField({required this.controller});

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String dropdownValue = '1+';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: '619 3456 7890',
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.blue),
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['1+', '91+', '44+', '33+']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
