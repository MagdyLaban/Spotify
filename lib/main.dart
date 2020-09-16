import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/home.dart';

import 'screens/home.dart';
import 'screens/home.dart';
import 'screens/home.dart';
import 'screens/home.dart';
import 'screens/splash.dart';
import 'screens/splash.dart';
import 'screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.id,
      routes: {
        SplashScreen.id : (context) =>SplashScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        ArtistsScreen.id : (context) => ArtistsScreen(),
      },
    );
  }
}
