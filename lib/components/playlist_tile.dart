import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class PlaylistTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only( right: 15,bottom: 5),
          child: Container(
            width: 120,
            height: 120,
            color: kSecondaryColor,
            child: Icon(Icons.playlist_play,color: Colors.grey,size: 60,),
          ),
        ),
        Text('Playlist Name',style: kTileNameTextStyle)
      ],
    );
  }
}