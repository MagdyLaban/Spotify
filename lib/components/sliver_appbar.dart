import 'dart:ui';
import 'search_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class NormalSliverAppBar extends StatelessWidget {
  NormalSliverAppBar({this.text,this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(stretchModes: [
        StretchMode.fadeTitle,
        StretchMode.blurBackground,
      ],
        titlePadding: EdgeInsets.all(0.5  ),
        centerTitle: true,
        title: Text('category',
        style: kAppBarTitleTextStyle),
        collapseMode: CollapseMode.parallax,
      ),
      elevation: 8,
      backgroundColor: kBackgroundColor,
      floating: false,
      pinned: true,
      snap: false,
      expandedHeight: 200,
    );
  }
}
