import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/utilities/constant.dart';

class PlayerIcons extends StatefulWidget {
  @override
  _PlayerIconsState createState() => _PlayerIconsState();
}

class _PlayerIconsState extends State<PlayerIcons> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: _isLiked ? kLikedIcon : kUnLikedIcon,
          onPressed: () {
            setState(() {
              !_isLiked ? _isLiked = true : _isLiked = false;
            });
          },
        ),
        Icon(
          Icons.skip_previous,
          color: Colors.grey,
          size: 40,
        ),
        Icon(
          Icons.play_circle_filled,
          color: Colors.white,
          size: 80,
        ),
        Icon(
          Icons.skip_next,
          color: Colors.white,
          size: 40,
        ),
        Icon(
          Feather.minus_circle,
          color: Colors.white,
        ),
      ],
    );
  }
}
