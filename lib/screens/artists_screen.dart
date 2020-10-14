import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/components/artists_tiles_sliver_grid.dart';
import 'package:spotifynew/screens/bottom_nav_screens/bottom_nav_bar_screen.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/rounded_action_button.dart';

class ArtistsScreen extends StatefulWidget {
  static const String id = 'artists screen';

  @override
  _ArtistsScreenState createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarWithSearch(
            text: 'Choose 3 or more artists you like.',
            style: kAppBarTitleTextStyle,
            searchBarStyle: kSearchBarDarkStyle,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 5),
          ),
          ArtistsTilesSliverGrid(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: RoundedActionButton(
          title: 'DONE',
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => BottomNavBar(),
              ),
                  (route) => false,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
