import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1DB954);

const kHomeScreenGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      // Color(0xFF000000),
      // Color(0xFF000000),
      // Color(0xFF000000),
      kBackgroundColor,
      kBackgroundColor,
      kBackgroundColor,
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

const kLightSearchBarStyle = InputDecoration(
  contentPadding: EdgeInsets.all(10.0),
  filled: true,
  fillColor: Color(0xffffffff),
  prefixIcon: Icon(Icons.search, color: kSecondaryColor),
  hintText: 'Artist,Song or Albums',
  hintStyle: TextStyle(
    color: kBackgroundColor,
    fontSize: 14,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
);

const kSearchBarDarkStyle = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
  filled: true,
  fillColor: Color(0xff2A2A2A),
  prefixIcon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  hintText: 'Search',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
);

const kBackgroundColor = Color(0xff121212);

const kAppBarTitleTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const kSignUpUserRequiredInputStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 25.0,
);

const kTextFieldConditionTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 13.0,
  fontWeight: FontWeight.w500,
);

const kSecondaryColor = Color(0xff282828);

const kSecondaryColor2 = Color(0xff404040);

const kLabelTextStyle = TextStyle(
  fontSize: 25,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kTileNameTextStyle = TextStyle(color: Colors.white, fontSize: 13);
const kNextButtonTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 17.0,
);

BoxDecoration kGenderLabelStyle = BoxDecoration(
  borderRadius: BorderRadius.circular(
    40.0,
  ),
  color: kBackgroundColor,
  border: Border.all(
    color: Colors.grey,
    width: 2.8,
  ),
);

const kGenderTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 15.0,
);

const kPremiumLabelTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

const kGreenGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff045645), Color(0xff0FA467)]);
const kBlueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff5991C2), Color(0xff403F77)]);
const kPurpleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff213263), Color(0xffAC2995)]);

const kUnLikedIcon = Icon(Icons.favorite_border,color: Colors.white,);
const kLikedIcon = Icon(Icons.favorite,color: kPrimaryColor,);
