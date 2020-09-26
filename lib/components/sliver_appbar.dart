import 'dart:ui';
import 'search_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SliverAppBarWithSearch extends StatelessWidget {
  SliverAppBarWithSearch({this.text,this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only( bottom:0.8),
        title: SearchBar(),
        background: Center(
          child: Text(
            text,
            style: style,
        ),
        ),
        collapseMode: CollapseMode.parallax,
        stretchModes: [
          StretchMode.fadeTitle
        ],
      ),
      forceElevated: true,
      elevation: 5,
      backgroundColor: Color(0xff121212),
      floating: false,
      pinned: true,
      snap: false,
      expandedHeight: 200,
    );
  }
}


