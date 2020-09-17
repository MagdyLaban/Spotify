import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class PremiumScreen extends StatefulWidget {
  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(child: Text('Premium Screen',style: TextStyle(color: Colors.white),)),
    );
  }
}
