import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/screens/playlist_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class DailyMixTile extends StatelessWidget {
  DailyMixTile({@required this.index,@required this.image});
  final int index;
  final String image;
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
                  image: DecorationImage(
                    image: AssetImage('assets/images/$image'+'.jpg'),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(5))
              ),
            ),
            SizedBox(width: 15,),
            Flexible(child: Text('Music collection',style: kTileNameTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.bold),overflow: TextOverflow.visible)),
          ],
        ),
      ),
    );
  }
}
