import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/components/horizontal_playlist_tile.dart';
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
            onTap: (index) {

            },
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
            unselectedLabelColor: Colors.white12,
            indicatorColor: Colors.greenAccent,
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
                  itemBuilder: (context, index) => index == 0?ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient:LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff046d50), Colors.greenAccent]
                        ),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'liked songs',
                      style: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('10 songs',
                        style: TextStyle(color: Colors.white60)),
                  ):HorizontalPlaylistTile(),
                  itemCount: 15,
                ),
                ListView.builder(

                  itemBuilder: (context, index) => ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    leading: Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(70)
                      ),
                    ),
                    title: Text(
                      'Artist',
                      style: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  itemCount: 15,
                ),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:200.0),
                      child: Column(
                        children: [
                          Text(
                            "Your albums will",
                            style: TextStyle(fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " appear here ",
                            style: TextStyle(fontSize: 30,
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
