import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';


class HorizontalPlaylistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            color: kSecondaryColor,
            child: Icon(
              Icons.music_note,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Playlist Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'release date',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}