import 'package:flutter/material.dart';
import 'package:spotifynew/components/horizontal_song_tile.dart';
import 'package:spotifynew/utilities/constant.dart';

class PlaylistScreen extends StatefulWidget {
  static const String id = 'playlist screen';
  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {

  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height / 3,
                centerTitle: true,
                backgroundColor: kSecondaryColor,
                actions: <Widget>[
                  IconButton(
                    icon: isLiked? kLikedIcon: kUnLikedIcon,
                    onPressed: (){
                      setState(() {
                        !isLiked ? isLiked = true : isLiked = false;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert,color: Colors.white,),
                    onPressed: (){

                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: kSecondaryColor2,
                        image: DecorationImage(
                          image: AssetImage('assets/images/od.jpg'),
                        )
                      ),
                    ),
                  ),
                  title: Text('Playlist Name'),
                  centerTitle: true,
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                        (context, index){
                      return HorizontalSongTile();
                    },
                  childCount: 15,
                ),
              ),
            ],
          ),
         _buildFab()
        ],
      ),
    );
  }

  Widget _buildFab() {
    // double top = 245; //default top margin, -4 for exact alignment
    // if (_scrollController.hasClients) {
    //  top -= _scrollController.offset;
    // }
    return Positioned(
      top: 85,
      right: 10,
      child: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () => {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }

}

