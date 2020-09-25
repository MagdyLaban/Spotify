import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1DB954);
const kPrimaryDarkColor = Color(0xFF191414);

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
  prefixIcon: Icon(Icons.search,color: Colors.grey,),
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
const kSecondaryColor = Color(0xff282828);
const kSecondaryColor2 = Color(0xff404040);
const kAppBarTitleTextStile = TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30);
const kLabelTextStyle = TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold);