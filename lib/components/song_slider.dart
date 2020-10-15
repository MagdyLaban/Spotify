import 'package:flutter/material.dart';

class SongSlider extends StatefulWidget {
  @override
  _SongSliderState createState() => _SongSliderState();
}

class _SongSliderState extends State<SongSlider> {
  int _currentTime = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbColor: Colors.white,
          overlayColor: Colors.white,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 5.0),
        ),
        child: Slider(
          value: _currentTime.toDouble(),
          min: 0.0,
          max: 5.0,
          onChanged: (double newValue) {
            setState(
              () {
                _currentTime = newValue.round();
              },
            );
          },
        ),
      ),
    );
  }
}
