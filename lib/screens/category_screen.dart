import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/utilities/constant.dart';

import 'package:spotifynew/components/cat_sliver_grid.dart';
class CategoryScreen extends StatelessWidget {
  static const String id = 'category screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: CustomScrollView(
        slivers: [
          NormalSliverAppBar(
            text: 'Category',
            style: kAppBarTitleTextStyle.copyWith(fontSize: 50),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  child: Center(
                    child: Text(
                      'Popular Playlists',
                      style: kAppBarTitleTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          Expanded(child: CategorySliverGrid()),
        ],
      ),
    ) ;
  }
}
