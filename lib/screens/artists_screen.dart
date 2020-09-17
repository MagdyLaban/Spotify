import 'package:flutter/material.dart';
import 'package:spotifynew/components/sliver_appbar_with_search.dart';
import 'package:spotifynew/components/artists_tiles_sliver_grid.dart';
import 'package:spotifynew/utilities/constant.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBarWithSearch(),
            ArtistsTilesSliverGrid(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text('   DONE   ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          backgroundColor: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}




