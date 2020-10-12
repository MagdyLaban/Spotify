import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class CenteredLabel extends StatelessWidget {
  CenteredLabel({@required this.title,});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 15, ),
              child: Center(child: Text(title,style: kLabelTextStyle)),
            );
          },
          childCount: 1
      ),
    );
  }
}
