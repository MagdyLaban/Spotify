import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/screens/category_screen.dart';
import 'package:spotifynew/screens/likes_screen.dart';
import 'package:spotifynew/screens/login/login_screen.dart';
import 'package:spotifynew/screens/playlist_screen.dart';
import 'package:spotifynew/screens/register_screen.dart';
import 'package:spotifynew/screens/settings_screen.dart';
import 'screens/bottom_nav_screens/bottom_nav_bar_screen.dart';
import 'screens/register_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/playlist_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ArtistsScreen.id: (context) => ArtistsScreen(),
        BottomNavBar.id: (context) => BottomNavBar(),
        SettingScreen.id: (context) => SettingScreen(),
        PlaylistScreen.id: (context) => PlaylistScreen(),
        CategoryScreen.id: (context) => CategoryScreen(),
        LikesScreen.id: (context) => LikesScreen(),
      },
    );
  }
}
