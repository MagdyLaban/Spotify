import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Icon labelIcon;
  final Function onPress;

  const RoundButton({Key key, this.text, this.onPress, this.labelIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.02),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: screenSize.width - 50,
          height: 45.0,
          decoration: text == 'Sign up free'
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: kPrimaryColor,
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
          child: text == 'Sign up free'
              ? Center(
                  child: Text(
                    'Sign up free',
                    style: kLogInLabelTextStyle,
                  ),
                )
              : Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        right: 35.0,
                        bottom: 10.0,
                        top: 10.0,
                      ),
                      child: labelIcon,
                    ),
                    Center(
                      child: Text(
                        text,
                        style: kLogInLabelTextStyle,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
