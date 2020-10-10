import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spotifynew/screens/register_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => RegisterScreen(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Image(
          width: 160,
          height: 160,
          image: AssetImage(
            'assets/images/Spotify2.png',
          ),
        ),
      ),
    );
  }
}
