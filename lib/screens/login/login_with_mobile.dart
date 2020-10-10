import 'package:flutter/material.dart';
import 'package:spotifynew/screens/login/components/mobile_number.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class LoginWithMobileScreen extends StatefulWidget {
  @override
  _LoginWithMobileScreenState createState() => _LoginWithMobileScreenState();
}

class _LoginWithMobileScreenState extends State<LoginWithMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
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
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ArtistsScreen(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
