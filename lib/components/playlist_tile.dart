import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/screens/playlist_screen.dart';

class PlaylistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only( bottom: 5,),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistScreen(),
                    ));
              },
              child: Container(
                width: 120,
                height: 120,
                color: kSecondaryColor,
                child: Icon(
                  Icons.queue_music,
                  color: Colors.grey,
                  size: 60,
                ),
              ),
            ),
          ),
          Text('Playlist Name', style: kTileNameTextStyle)
        ],
      ),
    );
  }
}
