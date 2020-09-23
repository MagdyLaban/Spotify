import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/artist_tile.dart';
import 'package:flutter/material.dart';
import 'category_tlle.dart';

class CategoryTilesSliverGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        crossAxisSpacing:15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.8
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return CategoryTile();
        },
        childCount: 30,
      ),
    );
  }
}