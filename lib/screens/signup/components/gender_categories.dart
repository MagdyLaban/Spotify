import 'package:flutter/material.dart';
import 'package:spotifynew/screens/signup/components/gender_label.dart';
import 'package:spotifynew/screens/signup/user_name.dart';

class GenderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          GenderLabel(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserNameScreen()));
            },
            gender: 'Female',
          ),
          SizedBox(
            width: 9.0,
          ),
          GenderLabel(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserNameScreen()));
            },
            gender: 'Male',
          ),
        ],
      ),
    );
  }
}
