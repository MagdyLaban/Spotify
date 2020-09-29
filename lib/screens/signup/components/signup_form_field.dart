import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SignUpForm extends StatefulWidget {
  final bool isPasswordScreen;
  final String screenId;
  SignUpForm({this.isPasswordScreen, this.screenId});
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        style: kSignUpFormTextStyle,
        cursorColor: Colors.white,
        obscureText: widget.isPasswordScreen ? !isShowPassword : false,
        decoration: InputDecoration(
          suffixIcon: widget.isPasswordScreen
              ? IconButton(
                  icon: Icon(
                    isShowPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey.shade50,
                  ),
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  })
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: kSecondaryColor2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kSecondaryColor2),
            borderRadius: BorderRadius.circular(5.0),
          ),
          filled: true,
          fillColor: kSecondaryColor2,
        ),
        autofocus: true,
      ),
    );
  }
}
