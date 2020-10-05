import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/date_picker.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/components/signup_screenBody.dart';
import 'package:spotifynew/screens/signup/gender.dart';

class BirthScreen extends StatefulWidget {
  static const String id = 'birth screen';
  @override
  _BirthScreenState createState() => _BirthScreenState();
}

class _BirthScreenState extends State<BirthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SignUpBody(
            signUpQuestion: 'What\'s your date of birth?',
            hint: '',
            customWidget: DatePickerBox(),
          ),
          NextButton(
            active: true,
            text: 'NEXT',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GenderScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
