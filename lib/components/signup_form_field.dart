import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SignUpForm extends StatefulWidget {
  final bool isPasswordScreen;
  SignUpForm({@required this.isPasswordScreen});
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(5.0),
        ),
        filled: true,
        fillColor: Colors.grey.shade700,
      ),
      autofocus: true,
    );
  }
}
