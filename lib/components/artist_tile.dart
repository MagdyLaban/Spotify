import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(200)
          ),
        ),
        Text('Artist Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
      ],
    );
  }
}