import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class NextButton extends StatelessWidget {
  final bool active;
  final Function onPress;
  final String text;

  NextButton({this.active, this.onPress, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(30.0),
          width: 125.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: active ? Colors.white : Colors.grey.shade700,
          ),
          child: Center(
            child: Text(
              text,
              style: kNextButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
