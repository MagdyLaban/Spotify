import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class Label extends StatelessWidget {
  Label({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 10),
              child: Text(title,style: kLabelTextStyle),
            );
          },
          childCount: 1
      ),
    );
  }
}
