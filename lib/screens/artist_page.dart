import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/components/artist_tile.dart';
import 'package:spotifynew/components/centered_label.dart';
import 'package:spotifynew/components/horizontal_list.dart';
import 'package:spotifynew/components/horizontal_playlist_tile.dart';
import 'package:spotifynew/components/playlist_tile.dart';
import 'package:spotifynew/utilities/constant.dart';

class ArtistPage extends StatefulWidget {
  static const String id = 'artist page';
  @override
  _ArtistPageState createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {

  bool isFollowed = false;
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
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        !isFollowed?isFollowed = true: isFollowed =false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.2, color: !isFollowed?Colors.white:Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            !isFollowed?'FOLLOW':'FOLLOWING',
                            style: TextStyle(color: !isFollowed?Colors.white:Colors.grey, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/IXaGi48DGLE/maxresdefault.jpg'),
                  ),
                  title: Text(
                    'Artist Name',
                  ),
                  centerTitle: true,
                ),
                pinned: true,
              ),
              CenteredLabel(
                title: 'Popular',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                      leading: Container(
                        width: 50,
                        height: 50,
                        color: kSecondaryColor,
                        child: Icon(
                          Icons.music_note,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Song Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle:
                          Text('# views', style: TextStyle(color: Colors.grey)),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                  childCount: 10,
                ),
              ),
              CenteredLabel(
                title: 'Popular releases',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return HorizontalPlaylistTile();
                  },
                  childCount: 7,
                ),
              ),
              CenteredLabel(
                title: 'Featuring Artist',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return HorizontalList(
                      item: PlaylistTile(),
                      itemCount: 10,
                      height: 140,
                    );
                  },
                  childCount: 1,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 50),
              ),
              CenteredLabel(
                title: 'Fans also like',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return HorizontalList(
                      item: ArtistTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArtistPage(),
                              ));
                        },
                      ),
                      itemCount: 10,
                      height: 120,
                    );
                  },
                  childCount: 1,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 50),
              ),
              CenteredLabel(
                title: 'About',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kSecondaryColor,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://i.ytimg.com/vi/IXaGi48DGLE/maxresdefault.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.verified_user,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text('VERIFIED ARTIST',style: TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 1.2),),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Text('---,--- monthly listeners',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1.1),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }, childCount: 1),
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

