import 'package:flutter/material.dart';

class PhoneNumberField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validatorfunc;
  final void Function(String) onDropdownChanged;

  PhoneNumberField({
    required this.controller,
    required this.validatorfunc,
    required this.onDropdownChanged,
  });

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String dropdownValue = '+90';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validatorfunc,
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
              color: Colors.green,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
              widget.onDropdownChanged(dropdownValue);
            },
            items: <String>['+90', '+91', '+94', '+95', '+97', '+99', '+33']
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
