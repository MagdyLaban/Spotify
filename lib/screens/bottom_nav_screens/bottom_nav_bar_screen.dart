import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/screens/bottom_nav_screens/home_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/library_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/premium_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/search_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = 'bottom nav screen';
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
    PremiumScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kSecondaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), title: Text('Library')),
          BottomNavigationBarItem(
              icon: Icon(Entypo.spotify), title: Text('Premium')),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
