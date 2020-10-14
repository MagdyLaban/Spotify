import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';

class LikesScreen extends StatefulWidget {
  static const String id = 'Likes screen';
  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {

  bool isLiked = true ;
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
                  title: Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.play_arrow,
                    color : Colors.white),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(80)
                    ),
                  ),
                  centerTitle: true,
                  titlePadding: EdgeInsets.only(top: 0),
                  background: Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:120.0,top:23),
                        child: Text("Liked Songs",style: kLabelTextStyle,),
                      ),
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter, colors: [Colors.indigo[900], Colors.indigo[400],Colors.white60]
                        )
                      ),
                    ),
                  ),
                ),
                pinned: true,
                floating: false,
              ),
              SliverPadding(padding: EdgeInsets.only(top: 15)),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff282828),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12))
                              ),
                              width: 80,
                              height: 80,
                              child: Icon(Icons.play_arrow,
                              color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Song Name',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Artist Name',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 80,),
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
                        ),
                      ),
                    );
                  },
                  childCount: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}

