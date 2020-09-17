import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/home_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/library_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/premium_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/search_screen.dart';
import 'package:spotifynew/screens/register_screen.dart';
import 'screens/bottom_nav_screens/bottom_nav_bar.dart';
import 'screens/register_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:BottomNavBar.id,

      routes: {
        SplashScreen.id : (context) =>SplashScreen(),
        RegisterScreen.id : (context) => RegisterScreen(),
        ArtistsScreen.id : (context) => ArtistsScreen(),
        BottomNavBar.id : (context) => BottomNavBar(),
      },
    );
  }
}
