import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/components/artists_tiles_sliver_grid.dart';

class ArtistsScreen extends StatefulWidget {

  static const String id = 'artists screen';

  @override
  _ArtistsScreenState createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBarWithSearch(),
            ArtistsTilesSliverGrid(),
          ],
        ),
      ),
    );
  }
}




