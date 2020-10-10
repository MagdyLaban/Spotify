import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:spotifynew/utilities/constant.dart';

class DatePickerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: 50,
          right: MediaQuery.of(context).size.width * 0.20,
          left: MediaQuery.of(context).size.width * 0.20,
        ),
        child: DatePickerWidget(
          looping: true, // default is not looping
          firstDate: DateTime(1900),
          lastDate: DateTime(2020, 8, 29),
          initialDate: DateTime(2020),
          dateFormat: "MMM-dd-yyyy",
          locale: DatePicker.localeFromString('en'),
          pickerTheme: DateTimePickerTheme(
            itemTextStyle: TextStyle(color: Colors.white, fontSize: 15),
            dividerColor: Colors.grey,
            backgroundColor: kBackgroundColor,
          ),
        ),
      ),
    );
  }
}
