import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/login/components/custom_digit_row.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MobileCode extends StatefulWidget {
  @override
  _MobileCodeState createState() => _MobileCodeState();
}

class _MobileCodeState extends State<MobileCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: kBackgroundColor,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'Enter your code',
            customWidget: CustomDigitRow(),
            hint: '',
          ),
          NextButton(
            text: 'NEXT',
            active: true,
            onPress: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtistsScreen(),
                  ),
                  (route) => false);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Feather.message_circle,
                  color: Colors.white,
                ),
              ),
              Text(
                'Resend SMS',
                style: kLogInLabelTextStyle,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    Feather.edit_2,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Edit phone number',
                  style: kLogInLabelTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
