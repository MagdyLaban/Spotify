import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class GenderLabel extends StatelessWidget {
  final String gender;
  final Function onTap;

  const GenderLabel({Key key, this.gender, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: kGenderLabelStyle,
        width: MediaQuery.of(context).size.width * 0.20,
        height: MediaQuery.of(context).size.height * 0.060,
        child: Center(
          child: Text(
            gender,
            style: kGenderTextStyle,
          ),
        ),
      ),
    );
  }
}
