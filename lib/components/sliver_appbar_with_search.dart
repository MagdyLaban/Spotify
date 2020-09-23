import 'dart:ui';

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
        titlePadding: EdgeInsets.symmetric(horizontal: 0,vertical: 15.0),
        title: Expanded(
          child: Container(
            height: 40,
            child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  filled: true,
                  fillColor: Color(0xffffffff),
                  prefixIcon: Icon(Icons.search,color: Colors.grey[600],),
                  hintText: 'Artist,Song or Alboms',
                  hintStyle: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 14,

                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
            ),
          ),
        ),
        background: Center(
          child: Text(
            text,
            style: style,
        ),
        ),
        collapseMode: CollapseMode.parallax,
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
