import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';

class DatePickerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DatePickerWidget(
      looping: true, // default is not looping
      firstDate: DateTime(1900),
      lastDate: DateTime(2020, 8, 29),
      initialDate: DateTime(2020),
      dateFormat: "MMM-dd-yyyy",
      locale: DatePicker.localeFromString('en'),
      pickerTheme: DateTimePickerTheme(
        itemTextStyle: TextStyle(color: Colors.white, fontSize: 15),
        dividerColor: Colors.grey,
        backgroundColor: Colors.black,
      ),
    );
  }
}
