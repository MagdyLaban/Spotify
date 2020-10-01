import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_form_field.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/screens/signup/password.dart';

class EmailScreen extends StatefulWidget {
  static const String id = 'email screen';
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'What\'s your email?',
            hint: 'You\'ll need to confirm this email later.',
            customWidget: SignUpForm(
              isPasswordScreen: false,
            ),
          ),
          NextButton(
            active: true,
            text: 'NEXT',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasswordScreen()));
            },
          ),
        ],
      ),
    );
  }
}
