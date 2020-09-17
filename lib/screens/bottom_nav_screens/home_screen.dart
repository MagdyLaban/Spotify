import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(child: Text('Home Screen',style: TextStyle(color: Colors.white),)),
    );
  }
}
