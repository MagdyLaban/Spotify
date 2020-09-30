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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CirclePageIndicator(
        selectedDotColor: Colors.white,
        dotColor: Colors.grey,
        size: 7,
        selectedSize: 8,
        itemCount: 5,
        currentPageNotifier: _currentPageNotifier,
      ),
    );
  }

  String _individualPrice =
      'Only EGP 49.99/month after offer period. Cancel any time.';
  String _duoPrice =
      'Only EGP 64.99/month after offer period.For two people who live at the same address.';
  String _familyPrice =
      'Only EGP 79.99/month after offer period. For up to 6 family members living at the same address.';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor.withAlpha(10),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Try Premium free for 1 month',
              style: kAppBarTitleTextStyle,
              textAlign: TextAlign.center,
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
                  PremiumCompareCard(
                    freeFeature: 'Ad breaks',
                    premiumFeature: 'Ad-free music',
                  ),
                  PremiumCompareCard(
                    freeFeature: 'Play in shuffle',
                    premiumFeature: 'Play any song',
                  ),
                  PremiumCompareCard(
                    freeFeature: '6 skips per hour',
                    premiumFeature: 'Unlimited skips',
                  ),
                  PremiumCompareCard(
                    freeFeature: 'Streaming only',
                    premiumFeature: 'Offline listening',
                  ),
                  PremiumCompareCard(
                    freeFeature: 'Basic audio quality',
                    premiumFeature: 'Extreme audio quality',
                  ),
                ],
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: _buildCircleIndicator(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: RoundedActionButton(
                title: 'GET PREMIUM',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: SubscriptionRichText(
                planPrice: _individualPrice,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Spotify Free',
                      style: kPremiumLabelTextStyle,
                    ),
                    Text('CURRENT PLAN',
                        style: TextStyle(
                          color: Colors.white70,
                          letterSpacing: 1.5,
                          fontSize: 12,
                        ))
                  ],
                ),
              ),
            ),
            PremiumPlanCard(
              height: 340,
              gradient: kGreenGradient,
              plan: 'Premium Individual',
              details: 'Ad-free music . Download to listen offline .'
                  ' Unlimited skips . On demand playback . Cancel anytime',
              planPrice: _individualPrice,
            ),
            PremiumPlanCard(
              height: 380,
              gradient: kBlueGradient,
              plan: 'Premium Duo',
              details:
                  '2 Premium accounts . Duo Mix: shared playlist for two . '
                  'Ad-free music . Download to listen offline .'
                  ' Unlimited skips . On demand playback . Cancel anytime',
              planPrice: _duoPrice,
            ),
            PremiumPlanCard(
              height: 420,
              gradient: kPurpleGradient,
              plan: 'Premium Family',
              details:
                  'Up to 6 Premium accounts . Family Mix: shared playlist . '
                  'Block explicit music . Ad-free music . Download to listen offline .'
                  ' Unlimited skips . On demand playback . Cancel anytime',
              planPrice: _duoPrice,
            ),
          ],
        ),
      ),
    );
  }
}

class PremiumPlanCard extends StatelessWidget {
  PremiumPlanCard(
      {this.height, this.gradient, this.plan, this.details, this.planPrice});
  final double height;
  final Gradient gradient;
  final String plan;
  final String details;
  final String planPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Container(
        height: height,
        padding: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 20),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(plan,
                    style: kPremiumLabelTextStyle.copyWith(fontSize: 19)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Free',
                      style: kPremiumLabelTextStyle.copyWith(fontSize: 30),
                    ),
                    Text(
                      'FOR 1 MONTH',
                      style: TextStyle(
                        color: Colors.white70,
                        letterSpacing: 1.5,
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              details,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            RoundedActionButton(
              title: 'TRY 1 MONTH FREE',
            ),
            SubscriptionRichText(
              planPrice: planPrice,
            ),
          ],
        ),
      ),
    );
  }
}

class SubscriptionRichText extends StatelessWidget {
  SubscriptionRichText({this.planPrice});
  final String planPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
                height: 1.5,
                letterSpacing: 0.1),
            children: [
              TextSpan(
                text: planPrice,
              ),
              TextSpan(
                text: 'Terms and Conditions ',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              TextSpan(text: 'apply.'),
            ]),
      ),
    );
  }
}

class PremiumCompareCard extends StatelessWidget {
  PremiumCompareCard({this.freeFeature, this.premiumFeature});
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
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'FREE',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 12),
                      ),
                      Text(
                        freeFeature,
                        style: kPremiumLabelTextStyle,
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
                    gradient: kGreenGradient,
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 12),
                      ),
                      Text(
                        premiumFeature,
                        style: kPremiumLabelTextStyle,
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
