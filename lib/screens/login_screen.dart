import 'package:flutter/material.dart';
import 'package:spotifynew/screens/bottom_nav_screens/home_screen.dart';
import 'package:spotifynew/screens/register_screen.dart';
import 'package:spotifynew/screens/signup/components/next_button.dart';
import 'package:spotifynew/screens/signup/components/signup_form_field.dart';
import 'package:spotifynew/utilities/constant.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.id);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Email or username',
                style: kSignUpUserRequiredInputStyle,
              ),
            ),
            SignUpForm(
              isPasswordScreen: false,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Password',
                style: kSignUpUserRequiredInputStyle,
              ),
            ),
            SignUpForm(
              isPasswordScreen: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
            ),
            Center(
              child: NextButton(
                onPress: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                text: 'LOG IN',
                active: false,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                    child: Text(
                      'LOG IN WITHOUT PASSWORD',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          wordSpacing: 3.0,
                          letterSpacing: 1.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
