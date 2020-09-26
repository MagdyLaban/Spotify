import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'bottom_nav_bar_screen.dart';
import 'package:spotifynew/components/search_category_sliver_grid.dart';
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
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBarWithSearch(
              text: 'Search',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SliverPadding(
              padding : EdgeInsets.all(10.0)
            ),
            CategoryTilesSliverGrid(),
          ],
        ),
      ),
    );
  }
}
