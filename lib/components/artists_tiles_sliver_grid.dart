import 'package:flutter/material.dart';
import 'package:spotifynew/components/artist_tile.dart';

class ArtistsTilesSliverGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing:5,
        mainAxisSpacing: 20,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return ArtistTile(onTap: (){},);
        },
        childCount: 24,
      ),
    );
  }
}
