import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/gender_label.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/user_name.dart';
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
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35.0),
              child: Text(
                'What\'s your gender?',
                style: kSignUpUserRequiredInputStyle,
              ),
            ),
            Row(
              children: [
                GenderLabel(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserNameScreen()));
                  },
                  gender: 'Female',
                ),
                SizedBox(
                  width: 9.0,
                ),
                GenderLabel(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserNameScreen()));
                  },
                  gender: 'Male',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
