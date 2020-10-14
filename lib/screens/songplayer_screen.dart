import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/utilities/constant.dart';

class SongPlayer extends StatefulWidget {
  @override
  _SongPlayerState createState() => _SongPlayerState();
}

class _SongPlayerState extends State<SongPlayer> {
  int _currentTime = 0;
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: kHomeScreenGradient,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.70,
                color: kSecondaryColor,
                child: Icon(
                  Feather.music,
                  color: Colors.white,
                ),
              ),
              Text(
                'Song Name',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Text(
                'Singer Name',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: kPrimaryColor,
                  overlayColor: Colors.greenAccent,
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 8.0),
                ),
                child: Slider(
                  value: _currentTime.toDouble(),
                  min: 120.0,
                  max: 250.0,
                  onChanged: (double newValue) {
                    setState(
                      () {
                        _currentTime = newValue.round();
                      },
                    );
                  },
                ),
              ),
              Row(
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
                    color: kSecondaryColor,
                  ),
                  Icon(
                    Feather.play_circle,
                    color: kSecondaryColor,
                  ),
                  Icon(
                    Feather.skip_forward,
                    color: kSecondaryColor,
                  ),
                  Icon(
                    Feather.minus_circle,
                    color: kSecondaryColor,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Feather.speaker,
                    color: kSecondaryColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
