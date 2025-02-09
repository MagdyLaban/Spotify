import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/screens/login/login_screen.dart';
import 'package:spotifynew/screens/login/login_with_mobile.dart';
import 'package:spotifynew/screens/signup/components/rounded_button.dart';
import 'package:spotifynew/screens/signup/email.dart';
import 'package:spotifynew/utilities/constant.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: kHomeScreenGradient,
        child: Column(
          children: [
            Expanded(
              child: Image(
                height: 90,
                width: 90,
                image: AssetImage('assets/images/spotify.png',)
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.05),
              child: Column(
                children: [
                  Text(
                    'Millions of songs.',
                    style: kLogInCenterTextStyle,
                  ),
                  Text(
                    'Free on Spotify.',
                    style: kLogInCenterTextStyle,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                RoundButton(
                  isOnlyText: true,
                  text: 'Sign up free',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EmailScreen()));
                  },
                ),
                RoundButton(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginWithMobileScreen()));
                  },
                  isOnlyText: false,
                  text: 'Continue with phone number',
                  labelIcon: Icon(
                    Feather.smartphone,
                    color: Colors.white,
                  ),
                ),
                RoundButton(
                  isOnlyText: false,
                  text: 'Continue with Facebook',
                  labelIcon: Icon(
                    Feather.facebook,
                    color: Colors.white,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'Log in',
                    style: kLogInLabelTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
