import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_form_field.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/screens/signup/components/terms_privacy.dart';
import 'package:spotifynew/utilities/constant.dart';

class UserNameScreen extends StatefulWidget {
  static const String id = 'username screen';
  @override
  _UserNameScreenState createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: CustomAppBar(),
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'What\'s your name?',
            hint: 'This appears on your Spotify profile.',
            customWidget: SignUpForm(
              isPasswordScreen: false,
            ),
          ),
          NextButton(
            active: true,
            text: 'CREATE',
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
          TermsAndPrivacy(),
        ],
      ),
    );
  }
}
