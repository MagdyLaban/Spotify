import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_form_field.dart';
import 'package:spotifynew/utilities/constant.dart';

class SignUpBody extends StatefulWidget {
  final String signUpQuestion;
  final bool isPassword;
  final String hint;
  final Function onPress;
  final bool isNext;

  const SignUpBody(
      {Key key,
      this.signUpQuestion,
      this.isPassword,
      this.hint,
      this.onPress,
      this.isNext})
      : super(key: key);

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
        SignUpForm(
          isPasswordScreen: widget.isPassword,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            widget.hint,
            style: kTextFieldConditionTextStyle,
          ),
        ),
        Center(
          child: NextButton(
            onPress: widget.onPress,
            active: widget.isNext,
          ),
        ),
      ],
    );
  }
}
