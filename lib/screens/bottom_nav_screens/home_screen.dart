import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/artists_tiles_sliver_grid.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: kBackgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              expandedHeight: 120,
            ),
            ArtistsTilesSliverGrid(),
          ],
        ));
  }
}
