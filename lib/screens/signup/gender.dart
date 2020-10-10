import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/gender_categories.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/utilities/constant.dart';

class GenderScreen extends StatefulWidget {
  static const String id = 'gender screen';
  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'What\'s your gender?',
            hint: ' ',
            customWidget: GenderCategory(),
          ),
        ],
      ),
    );
  }
}
