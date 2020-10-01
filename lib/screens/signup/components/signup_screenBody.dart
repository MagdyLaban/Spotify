import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SignUpBody extends StatefulWidget {
  final String signUpQuestion;
  final Widget customWidget;
  final String hint;

  SignUpBody({
    this.signUpQuestion,
    this.hint,
    this.customWidget,
  });

  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            widget.signUpQuestion,
            style: kSignUpUserRequiredInputStyle,
          ),
        ),
        widget.customWidget,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            widget.hint,
            style: kTextFieldConditionTextStyle,
          ),
        ),
      ],
    );
  }
}
