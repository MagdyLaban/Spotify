import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/screens/settings_screen.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/song_tile.dart';


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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: kBackgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Row(
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
                expandedHeight: 120,
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
                      return Container(
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 70,
                              decoration: BoxDecoration(
                                color: kSecondaryColor2,
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(10))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Daily Mix '+ (index+ 1).toString(),style: kLabelTextStyle.copyWith(fontSize: 13),),
                            ),
                          ],
                        ),
                      );
                    },
                    childCount: 6,
                  ),
              ),
              Label(title: 'Recently played',),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                        (BuildContext context,int index){
                      return SongTile();
                    },
                    childCount: 1,
                ),
              ),
            ],
          ),
        ));
  }
}

class Label extends StatelessWidget {
  Label({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 10),
            child: Text(title,style: kLabelTextStyle),
          );
        },
        childCount: 1
      ),
    );
  }
}
