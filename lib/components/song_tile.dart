import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SongTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only( right: 10,bottom: 5),
          child: Container(
            width: 100,
            height: 100,
            color: kSecondaryColor,
            child: Icon(Icons.music_note,color: Colors.grey,size: 50,),
          ),
        ),
        Text('Song Name',style: TextStyle(color: Colors.white,fontSize: 13),)
      ],
    );
  }
}