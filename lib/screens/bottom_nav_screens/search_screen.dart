import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/category_sliver_grid.dart';

class SearchScreen extends StatefulWidget {
  static const String id = 'search screen';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverAppBarWithSearch(
              text: 'Search',
              style: kAppBarTitleTextStyle.copyWith(fontSize: 50),
              searchBarStyle: kLightSearchBarStyle,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      'Browse all',
                      style: kAppBarTitleTextStyle.copyWith(fontSize: 25),
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
            CategoryTilesSliverGrid(),
          ],
        ),
      ),
    );
  }
}
