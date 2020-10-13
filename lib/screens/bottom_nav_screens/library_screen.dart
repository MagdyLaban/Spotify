import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/components/horizontal_playlist_tile.dart';
import 'package:spotifynew/screens/artists_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, bottom: 40),
            child: Text(
              "Music",
              style: kAppBarTitleTextStyle,
            ),
          ),
          TabBar(
            onTap: (index) {},
            controller: tabController,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            tabs: [
              Tab(
                text: 'Playlists',
              ),
              Tab(text: 'Artists'),
              Tab(
                text: 'Albums',
              )
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[600],
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2,
            isScrollable: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.67,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  //<<اهي يا حسام
                  itemBuilder: (context, index) => index == 0
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.indigo[900], Colors.indigo[500],Colors.indigo[200],Colors.white]
                                  )
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Liked Songs',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '10 songs',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : HorizontalPlaylistTile(),
                  itemCount: 15,
                ),
                ListView.builder(
                  itemBuilder: (context, index) => index == 14
                      ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                              color: kSecondaryColor,
                          ),
                          child: Icon(Icons.add,
                          color: Colors.white,) ,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Add Artist',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArtistsScreen(),
                            ));
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: kSecondaryColor,
                              ),
                              child: Icon(Icons.person,
                                color: Colors.grey,
                              size: 50,) ,
                            ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                ' Artist Name',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: 15,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Column(
                    children: [
                      Text(
                        "Your albums will",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " appear here ",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
