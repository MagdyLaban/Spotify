import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/artist_tile.dart';

class ArtistsTilesSliverGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing:5,
        mainAxisSpacing: 20,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return ArtistTile();
        },
        childCount: 24,
      ),
    );
  }
}
