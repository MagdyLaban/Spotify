import 'package:flutter/material.dart';
import 'package:spotifynew/screens/playlist_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class DailyMixTile extends StatelessWidget {
  DailyMixTile({@required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlaylistScreen(),));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              decoration: BoxDecoration(
                  color: kSecondaryColor2,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(5))
              ),
            ),
            SizedBox(width: 15,),
            Flexible(child: Text('Daily Mix'+ (index+ 1).toString(),style: kTileNameTextStyle,overflow: TextOverflow.visible)),
          ],
        ),
      ),
    );
  }
}
