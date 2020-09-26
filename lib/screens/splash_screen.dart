import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spotifynew/screens/register_screen.dart';

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
      backgroundColor: Colors.black,
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
