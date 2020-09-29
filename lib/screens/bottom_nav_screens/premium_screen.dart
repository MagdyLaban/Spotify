import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:spotifynew/components/rounded_action_button.dart';
import 'package:spotifynew/utilities/constant.dart';

class PremiumScreen extends StatefulWidget {
  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {

  final _currentPageNotifier = ValueNotifier<int>(0);
  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          selectedDotColor: Colors.white,
          dotColor: Colors.grey,
          size: 7,
          selectedSize: 8,
          itemCount: 5,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: Text(
              'Try Premium free for 1 month',
              style: kAppBarTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: PageView(
              dragStartBehavior: DragStartBehavior.down,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                PremiumCompareCard(freeFeature: 'Ad breaks',premiumFeature:'Ad-free music',),
                PremiumCompareCard(freeFeature: 'Play in shuffle',premiumFeature:'Play any song',),
                PremiumCompareCard(freeFeature: '6 skips per hour',premiumFeature:'Unlimited skips',),
                PremiumCompareCard(freeFeature: 'Streaming only',premiumFeature:'Offline listening',),
                PremiumCompareCard(freeFeature: 'Basic audio quality',premiumFeature:'Extreme audio quality',),
              ],
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                },
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: _buildCircleIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: RoundedActionButton(title: 'GET PREMIUM',onPressed: (){},),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
            child: Flexible(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 12,color: Colors.grey,height: 1.5,letterSpacing: 0.1),
                  children: [
                    TextSpan(text:'Only EGP 49.99/month after offer period. Cancel any time. ',),
                    TextSpan(text: 'Terms and Conditions ',style: TextStyle(fontSize: 12,color: Colors.white,),),
                    TextSpan(text: 'apply.'),
                  ]
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Spotify Free',style: kPremiumLabelTextStyle,),
                  Text('CURRENT PLAN',style: TextStyle(color: Colors.white70,letterSpacing: 1.5,fontSize: 12,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PremiumCompareCard extends StatelessWidget {
  PremiumCompareCard({this.freeFeature,this.premiumFeature});
  final String freeFeature;
  final String premiumFeature;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 150,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: kSecondaryColor2,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'FREE',
                        style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 12),
                      ),
                      Text(
                        freeFeature,
                        style:kPremiumLabelTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff045645), Color(0xff0FA467)]
                    ),
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'PREMIUM',
                        style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 12),
                      ),
                      Text(
                        premiumFeature,
                        style:kPremiumLabelTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
