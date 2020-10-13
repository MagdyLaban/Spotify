import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class LikesScreen extends StatefulWidget {
  static const String id = 'Likes screen';
  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {

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
                expandedHeight: MediaQuery.of(context).size.height / 7,
                centerTitle: true,
                backgroundColor: kSecondaryColor,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.more_vert,color: Colors.white,),
                    onPressed: (){

                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter, colors: [Colors.indigo[900], Colors.indigo[400],Colors.grey,kBackgroundColor]
                        )
                      ),
                    ),
                  ),
                ),
                pinned: true,


              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index){
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      leading: Container(
                        width: 50,
                        height: 50,
                        color: kSecondaryColor,
                        child: Icon(Icons.music_note,color: Colors.grey,),
                      ),
                      title: Text('Song Name',style: TextStyle(color: Colors.white),),
                      subtitle: Text('Artist Name',style: TextStyle(color: Colors.white)),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert,color: Colors.white,),
                      ),
                    );
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

