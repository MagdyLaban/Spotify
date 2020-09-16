import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class SliverAppBarWithSearch extends StatelessWidget {
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
            'Choose 3 or more artists you like.',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
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
