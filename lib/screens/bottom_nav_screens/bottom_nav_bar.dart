import 'package:flutter/material.dart';
import 'package:spotifynew/screens/artists_screen.dart';
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

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff282828),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text('Library')),
          BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Premium')),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),

    );
  }
}
