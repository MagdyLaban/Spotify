import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/birth_date.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';

class PasswordScreen extends StatefulWidget {
  static const String id = 'password screen';
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: SignUpBody(
        signUpQuestion: 'Create a Password',
        hint: 'Use at least 8 characters.',
        isNext: false,
        isPassword: true,
        buttonText: 'NEXT',
        onPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BirthScreen()),
          );
        },
      ),
    );
  }
}
