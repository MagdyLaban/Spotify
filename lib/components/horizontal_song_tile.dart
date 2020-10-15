import 'package:flutter/material.dart';
import 'package:spotifynew/screens/songplayer_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class HorizontalSongTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SongPlayer(),
            ));
      },
      contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      leading: Container(
        width: 50,
        height: 50,
        color: kSecondaryColor,
        child: Icon(
          Icons.music_note,
          color: Colors.grey,
        ),
      ),
      title: Text(
        'Song Name',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text('subtitle', style: TextStyle(color: Colors.white70)),
      trailing: IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ),
    );
  }
}
