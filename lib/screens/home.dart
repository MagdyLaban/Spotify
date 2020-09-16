import 'package:flutter/material.dart';
import 'package:spotifynew/components/rounded_button.dart';
import 'package:spotifynew/utilities/constant.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF000000),
              Color(0xFF000000),
              Color(0xFF000000),
              Color(0xFF191919),
              Color(0xFF4c4c4c),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image(
                height: 90,
                width: 90,
                image: AssetImage('assets/images/spotify.png'),
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
                  text: 'Sign up free',
                ),
                RoundButton(
                  text: 'Continue with phone number',
                  labelIcon: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                ),
                RoundButton(
                  text: 'Continue with Facebook',
                  labelIcon: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
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
