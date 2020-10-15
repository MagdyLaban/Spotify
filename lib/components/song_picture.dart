import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SongPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/2.jpg'),
          fit: BoxFit.cover,
        ),
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
