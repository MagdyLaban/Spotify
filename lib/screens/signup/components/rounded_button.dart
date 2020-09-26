import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Icon labelIcon;
  final Function onPress;
  final bool isOnlyText;

  const RoundButton(
      {Key key,
      this.text,
      this.onPress,
      this.labelIcon,
      @required this.isOnlyText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: screenSize.height * 0.02),
        width: screenSize.width - 50,
        height: 45.0,
        decoration: isOnlyText ? kSignUpFreeDecoration : kSignUpOtherDecoration,
        child: isOnlyText
            ? Center(
                child: Text(
                  'Sign up free',
                  style: kLogInLabelTextStyle,
                ),
              )
            : Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        right: 35.0,
                        bottom: 10.0,
                        top: 10.0,
                      ),
                      child: labelIcon,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: Text(
                      text,
                      style: kLogInLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
