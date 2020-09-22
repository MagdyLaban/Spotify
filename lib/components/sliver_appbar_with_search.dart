import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SliverAppBarWithSearch extends StatelessWidget {
  SliverAppBarWithSearch({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        title: Container(
          height: 45,
          child: TextField(
              decoration: kSearchBarStyle
          ),
        ),
        background: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            text,
            style: kAppBarTitleTextStile,
        ),
        ),
        collapseMode: CollapseMode.parallax,
      ),

      backgroundColor: Color(0xff121212),
      floating: false,
      pinned: true,
      snap: false,
      expandedHeight: 200,
    );
  }
}
