import 'package:flutter/material.dart';

import '../../../utils/constant_colors.dart';
import '../other_widgets/dataForm.dart';

class StartEndDateWidget extends StatefulWidget {
  final TextEditingController startDate;
  final TextEditingController endDate;

  const StartEndDateWidget(
      {super.key, required this.startDate, required this.endDate});

  @override
  State<StartEndDateWidget> createState() => _StartEndDateWidgetState();
}

class _StartEndDateWidgetState extends State<StartEndDateWidget> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
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
              onTap: () => _selectDate(context, widget.startDate),
              child: AbsorbPointer(
                child: DateForm(
                  controller: widget.startDate,
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
        Column(
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
              onTap: () => _selectDate(context, widget.endDate),
              child: AbsorbPointer(
                child: DateForm(
                  controller: widget.endDate,
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
     
      ],
    );
  }
}
