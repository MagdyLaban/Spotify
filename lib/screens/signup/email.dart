import 'package:flutter/material.dart';
import 'package:spotifynew/components/signup_form_field.dart';
import 'package:spotifynew/utilities/constant.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryDarkColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Create account',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: kPrimaryDarkColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 700,
            ),
            Text(
              'What\'s your email?',
              style: kSignUpUserRequiredInputStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: SignUpForm(
                isPasswordScreen: false,
              ),
            ),
            Text(
              'You\'ll need to confirm this email later.',
              style: kTextFieldConditionTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
