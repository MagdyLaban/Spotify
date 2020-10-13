import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class ArtistTile extends StatelessWidget {
   ArtistTile({@required this.onTap});
   final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(200)
              ),
              child: Icon(Icons.person_outline,color: Colors.grey,size: 50,),
            ),
            Text('Artist Name',style: kTileNameTextStyle)
          ],
        ),
      ),
    );
  }
}