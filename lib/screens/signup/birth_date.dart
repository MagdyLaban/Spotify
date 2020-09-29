import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/date_picker.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_appbar.dart';
import 'package:spotifynew/screens/signup/gender.dart';
import 'package:spotifynew/utilities/constant.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 700,
            ),
            Text(
              'What\'s your date of birth?',
              style: kSignUpUserRequiredInputStyle,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: 50,
                  right: MediaQuery.of(context).size.width * 0.20,
                  left: MediaQuery.of(context).size.width * 0.20,
                ),
                child: DatePickerBox(),
              ),
            ),
            Center(
              child: NextButton(
                active: true,
                text: 'NEXT',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenderScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
