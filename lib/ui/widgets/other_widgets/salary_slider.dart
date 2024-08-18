import 'package:flutter/material.dart';

class SalarySlider extends StatefulWidget {
  @override
  _SalarySliderState createState() => _SalarySliderState();
}

class _SalarySliderState extends State<SalarySlider> {
  RangeValues _currentRangeValues = const RangeValues(13000, 25000);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Salary',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        RangeSlider(
          values: _currentRangeValues,
          min: 10000,
          max: 50000,
          divisions: 8,
          activeColor: Colors.orange, // Customize the color
          inactiveColor: Colors.grey.shade300, // Customize the color
          labels: RangeLabels(
            '\$${_currentRangeValues.start.round()}k',
            '\$${_currentRangeValues.end.round()}k',
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${_currentRangeValues.start.round()}k',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '\$${_currentRangeValues.end.round()}k',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
