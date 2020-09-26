import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1DB954);
const kPrimaryDarkColor = Color(0xFF191414);

const kHomeScreenGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF000000),
      Color(0xFF000000),
      Color(0xFF000000),
      Color(0xFF191919),
      Color(0xFF4c4c4c),
    ],
  ),
);

BoxDecoration kSignUpFreeDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(40.0),
  color: kPrimaryColor,
);

BoxDecoration kSignUpOtherDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(40.0),
  border: Border.all(
    width: 1,
    color: Colors.grey,
  ),
);

const kLogInCenterTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const kSignUpFormTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

const kLogInLabelTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 17.0,
);

const kSearchBarStyle = InputDecoration(
  filled: true,
  fillColor: Color(0xff2A2A2A),
  prefixIcon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
);

const kBackgroundColor = Color(0xff121212);
const kAppBarTitleTextStile = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const kSignUpUserRequiredInputStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 35.0,
);

const kTextFieldConditionTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 13.0,
  fontWeight: FontWeight.w500,
);
