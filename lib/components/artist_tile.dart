import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class ArtistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(200)
            ),
          ),
        ),
        Text('Artist Name',style: kTileNameTextStyle)
      ],
    );
  }
}