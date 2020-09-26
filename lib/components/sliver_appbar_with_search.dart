import 'dart:ui';
import 'search_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SliverAppBarWithSearch extends StatelessWidget {
  SliverAppBarWithSearch({this.text,this.style,@required this.searchBarStyle});
  final String text;
  final TextStyle style;
  final InputDecoration searchBarStyle;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only( bottom:8),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SearchBar(searchBarStyle: searchBarStyle,),
        ),
        background: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,),
            child: Text(
              text,
              style: style,
        ),
          ),
        ),
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


