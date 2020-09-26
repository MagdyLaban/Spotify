import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList({@required this.item,@required this.itemCount,this.height});
  final Widget item;
  final int itemCount;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
          return item;
        },
        itemCount: itemCount,
      ),
    );
  }
}
