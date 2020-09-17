import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(child: Text('Library Screen',style: TextStyle(color: Colors.white),)),
    );
  }
}
