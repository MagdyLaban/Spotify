import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_form_field.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';

class UserNameScreen extends StatefulWidget {
  static const String id = 'username screen';
  @override
  _UserNameScreenState createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
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
        ],
      ),
    );
  }
}
