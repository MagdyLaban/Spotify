import 'package:flutter/material.dart';
import 'package:spotifynew/login/components/mobile_number.dart';
import 'package:spotifynew/screens/bottom_nav_screens/bottom_nav_bar_screen.dart';
import 'package:spotifynew/screens/register_screen.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';

class LoginWithMobileScreen extends StatefulWidget {
  @override
  _LoginWithMobileScreenState createState() => _LoginWithMobileScreenState();
}

class _LoginWithMobileScreenState extends State<LoginWithMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.id);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'Enter phone number',
            hint: 'We\'ll send you a code by SMS to confirm your phone number.',
            customWidget: MobileNumber(),
          ),
          NextButton(
            active: true,
            text: 'NEXT',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),
              );
            },
          ),
        ],
      ),
    );
  }
}
