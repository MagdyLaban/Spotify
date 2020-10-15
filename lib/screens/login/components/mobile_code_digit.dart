import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class MobileCodeDigit extends StatefulWidget {
  @override
  _MobileCodeDigitState createState() => _MobileCodeDigitState();
}

class _MobileCodeDigitState extends State<MobileCodeDigit> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        fillColor: kSecondaryColor2,
        filled: true,
      ),
    );
  }
}
