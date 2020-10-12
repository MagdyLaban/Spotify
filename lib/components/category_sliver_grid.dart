import 'package:flutter/material.dart';
import 'category_tile.dart';

class CategoryTilesSliverGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.8),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CategoryTile();
        },
        childCount: 30,
      ),
    );
  }
}
