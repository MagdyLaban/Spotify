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
          Feather.skip_back,
          color: Colors.grey,
          size: 40,
        ),
        Icon(
          Feather.play_circle,
          color: Colors.white,
          size: 65,
        ),
        Icon(
          Feather.skip_forward,
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
