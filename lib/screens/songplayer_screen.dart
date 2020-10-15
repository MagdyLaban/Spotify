import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/components/player_icons.dart';
import 'package:spotifynew/components/song_picture.dart';
import 'package:spotifynew/components/song_slider.dart';
import 'package:spotifynew/utilities/constant.dart';

class SongPlayer extends StatefulWidget {
  @override
  _SongPlayerState createState() => _SongPlayerState();
}

class _SongPlayerState extends State<SongPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SongPicture(),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Song Name',
                style: kSongNameTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Singer Name',
                style: kSingerNameTextStyle,
              ),
            ),
            SongSlider(),
            PlayerIcons(),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Icon(
                    Feather.speaker,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Icon(
                    Feather.share_2,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
