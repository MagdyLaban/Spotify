import 'package:spotifynew/components/playlist_tile.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/artist_tile.dart';
import 'package:flutter/material.dart';
import 'category_tile.dart';
import 'package:spotifynew/screens/playlist_screen.dart';

class CategorySliverGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing:0.2,
           mainAxisSpacing: 5,
          childAspectRatio: 0.9,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric( horizontal: 5.0),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistScreen(),));
                  },
                  child: Container(
                    width: 170,
                    height: 170,
                    color: kSecondaryColor2,
                    child: Icon(Icons.music_note,color: Colors.white,size: 80,),
                  ),
                ),
                SizedBox(height: 5),
                Text('playlist name',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 5),
                Text('1000 FOLLOWERS',style: TextStyle(fontSize: 11.5,color: Colors.white70),)
              ],
            ),
          );
        },
        childCount: 30,
      ),
    );
  }
}