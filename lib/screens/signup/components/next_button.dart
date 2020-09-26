import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class NextButton extends StatelessWidget {
  final bool active;
  final Function onPress;

  NextButton({this.active, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            'NEXT',
            style: kNextButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
