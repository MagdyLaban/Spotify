import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(child: Text('Search Screen',style: TextStyle(color: Colors.white),)),
    );
  }
}
