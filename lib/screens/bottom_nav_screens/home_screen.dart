import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/components/artist_tile.dart';
import 'package:spotifynew/components/playlist_tile.dart';
import 'package:spotifynew/screens/settings_screen.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/song_tile.dart';
import 'package:spotifynew/components/label_text.dart';
import 'package:spotifynew/components/horizontal_list.dart';
import 'package:spotifynew/components/daily_mix_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: kBackgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kSecondaryColor2,
                          kSecondaryColor,
                          kBackgroundColor
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingScreen(),));
                          },
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                expandedHeight: 100,
              ),
              Label(title: 'Good evening'),
              SliverGrid(
                gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing:10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.8
                ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return DailyMixTile(index: index);
                    },
                    childCount: 6,
                  ),
              ),
              Label(title: 'Suggested artists',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context,int index){
                    return HorizontalList(item: ArtistTile(),itemCount: 10,height: 120,);
                  },
                  childCount: 1,
                ),
              ),
              Label(title: 'Recently played',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                        (BuildContext context,int index){
                      return HorizontalList(item: SongTile(),itemCount: 10,height: 120,);
                    },
                    childCount: 1,
                ),
              ),
              Label(title: 'Made for you',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context,int index){
                    return HorizontalList(item: PlaylistTile(),itemCount: 10,height: 140,);
                  },
                  childCount: 1,
                ),
              ),
              Label(title:'What fits your mood?'),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context,int index){
                    return HorizontalList(item: PlaylistTile(),itemCount: 10,height: 140,);
                  },
                  childCount: 1,
                ),
              ),
              Label(title: 'Popular playlist',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context,int index){
                    return HorizontalList(item: PlaylistTile(),itemCount: 10,height: 140,);
                  },
                  childCount: 1,
                ),
              ),
              Label(title: 'Music to stay up to date',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context,int index){
                    return HorizontalList(item: SongTile(),itemCount: 10,height: 120,);
                  },
                  childCount: 1,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 20),
              )
            ],
          ),
        ));
  }
}



