import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotifynew/screens/bottom_nav_screens/bottom_nav_bar_screen.dart';
import 'package:spotifynew/screens/bottom_nav_screens/premium_screen.dart';
import 'package:spotifynew/screens/splash_screen.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/rounded_action_button.dart';

class SettingScreen extends StatefulWidget {
  static const String id = 'setting screen';
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool val_of_switch1 = false;
  bool val_of_switch2 = false;
  bool val_of_switch3 = false;
  bool val_of_switch4 = false;
  bool val_of_switch5 = false;
  bool val_of_switch6 = false;
  bool val_of_switch7 = false;
  bool val_of_switch8 = false;
  bool val_of_switch9 = false;
  bool val_of_switch10 = false;
  bool val_of_switch11 = false;
  bool val_of_switch12 = false;
  bool val_of_switch13 = false;

  int seconds = 0;
  String dropmenu = 'Only in a car';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff282828),
        elevation: 0,
        title: Text(
          'Settings',
          style: kLogInLabelTextStyle,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 32),
              ),
              Text(
                'Free Account',
                style: kLogInLabelTextStyle,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                child: RoundedActionButton(
                  title: 'GO PREMIUM',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PremiumScreen(), ));
                  },
                ),
              ),
              Profile_Button(),
              Mood(text: 'Data Saver'),
              SettingItem_Switch(
                title: 'On',
                item: 'Sets your music quality to low and disables canvas',
                switchval: val_of_switch1,
                change_switchval: (bool val) {
                  setState(() {
                    val_of_switch1 = val;
                  });
                },
              ),
              Mood(text: 'Playback'),
              SettingItem(
                title: 'Crossfade',
                subtitle: 'Allows you to crossfade between songs',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'off',
                      style: kSubtitleStyle,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Colors.grey.withOpacity(.5),
                          activeTrackColor: Colors.green.withOpacity(1),
                          thumbColor: Colors.green.withOpacity(1),
                          overlayColor: Colors.green,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 8),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 3),
                        ),
                        child: Slider(
                          value: seconds.toDouble(),
                          onChanged: (double newval) {
                            setState(() {
                              seconds = newval.round();
                            });
                          },
                          min: 0,
                          max: 12,
                        ),
                      ),
                    ),
                    Text(
                      '${seconds.toString()} s',
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              SettingItem_Switch(
                title: 'Gapless',
                item: 'Allows gapless playback',
                switchval: val_of_switch2,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch2 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Automix',
                item: 'Allow smooth transitions between songs in a playlist .',
                switchval: val_of_switch3,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch3 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Allow Explict Content',
                item: 'Turn on to play explict content ',
                switchval: val_of_switch4,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch4 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Show unplayable songs',
                item: 'Show songs that are unplayable .',
                switchval: val_of_switch5,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch5 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Normalize Volume',
                item: 'Set tje same volume level for all tracks ',
                switchval: val_of_switch6,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch6 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Device Broadcast Status',
                item:
                    'Allow other apps on your device to see what you are listening to.',
                switchval: val_of_switch7,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch7 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Autoplay',
                item:
                    'Keep on listening to similar tracks when your music ends .',
                switchval: val_of_switch8,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch8 = newval;
                  });
                },
              ),
              Mood(text: 'Devices'),
              SettingItem(
                  title: 'Connect to a device',
                  subtitle: 'Listen and Control Spotify on your devices'),
              SettingItem_Switch(
                title: 'Show local device only',
                item:
                    'Only show devices on your WiFi or ethernet in the devices menu .',
                switchval: val_of_switch9,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch9 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Spotify Connect in background',
                item:
                    'Allow Spotify Connect to keep Spotify running when the app in background',
                switchval: val_of_switch10,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch10 = newval;
                  });
                },
              ),
              Mood(text: 'Connect to Apps'),
              SettingItem(
                  title: 'Navigation',
                  subtitle: 'Connect with navigation apps'),
              Mood(text: 'Car mode'),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: SettingItem(
                      title: 'Switch to car mode',
                      subtitle: 'When you are in a car you will see car mode',
                    )),
                Expanded(
                  flex: 1,
                  child: DropdownButton(
                    isExpanded: true,
                    value: dropmenu,
                    style: kSignUpFormTextStyle,
                    dropdownColor: Color(0xff282828),
                    itemHeight: 50,
                    autofocus: true,
                    underline: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.4),
                    ),
                    onChanged: (String newval) {
                      setState(() {
                        dropmenu = newval;
                      });
                    },
                    items: <String>['Only in a car', 'Never']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ]),
              SettingItem_Switch(
                title: 'Keep app open on screen',
                item:
                    'Turn this on and the app will stay up on ypur screen while you are in car mode',
                switchval: val_of_switch11,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch11 = newval;
                  });
                },
              ),
              Mood(text: 'Social'),
              SettingItem_Switch(
                title: 'Private session',
                item: 'Start a private session to listen anonymously',
                switchval: val_of_switch12,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch12 = newval;
                  });
                },
              ),
              SettingItem_Switch(
                title: 'Listening activity',
                item: 'Share what i listen to with my followers on Spotify .',
                switchval: val_of_switch13,
                change_switchval: (bool newval) {
                  setState(() {
                    val_of_switch13 = newval;
                  });
                },
              ),
              Mood(text: 'Connect to Facebook'),
              Mood(text: 'Storage'),
              StorageTrack(),
              StorageSpace(
                text: 'Other apps                   34.4 GB',
                color: Colors.blue,
              ),
              StorageSpace(
                text: 'Cache                           7.0 MB',
                color: Colors.grey,
              ),
              StorageSpace(
                  text: 'Free                              72.3 GB',
                  color: Color(0xff282828)),
              Mood(text: 'Notifications'),
              SettingItem(
                  title: 'Notifications',
                  subtitle: 'Choose which notifications to receive '),
              Mood(text: 'About'),
              SettingItem(title: 'Version', subtitle: '8.5.76.962'),
              SettingItem(
                  title: 'Third-party software',
                  subtitle: 'Sweet software that helped us .'),
              SettingItem(
                  title: 'Terms and Conditions',
                  subtitle: 'All the stuff you need to know .'),
              SettingItem(
                  title: 'Privacy Policy',
                  subtitle: 'Important fot both of us .'),
              SettingItem(
                  title: 'Support',
                  subtitle: 'Get help from us and the community .'),
              Mood(text: 'Other'),
              SettingItem(
                  title: 'Log out',
                  subtitle: 'You are logged in as Kareem El-Bolaqi'),
            ],
          ),
        ),
      ),
    );
  }
}

class StorageSpace extends StatelessWidget {
  final Color color;
  final String text;
  StorageSpace({@required this.color, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color,
            radius: 6,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class StorageTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 5),
      child: Container(
          height: 8,
          decoration: BoxDecoration(
            color: Color(0xff282828),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
              ),
            ),
          )),
    );
  }
}

class Profile_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(
              'K',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            radius: 28,
            backgroundColor: Colors.deepOrange,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Kareem El-Bolaqi',
                  style: TextStyle(fontSize: 23, color: Colors.white)),
              Text(
                'view profile',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 10,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class SettingItem_Switch extends StatelessWidget {

  SettingItem_Switch(
      {@required this.title,
      @required this.item,
      this.switchval,
      this.change_switchval
      });

  final String title;
  final String item;
  final Function change_switchval;
  final bool switchval;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: SwitchListTile(
        title: Text(
          title,
          style: kLogInLabelTextStyle,
        ),
        subtitle: Text(
          item,
          style: kSubtitleStyle,
        ),
        activeColor: Colors.green,
        value: switchval,
        activeTrackColor: Colors.green.withOpacity(.3),
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.grey,
        onChanged: change_switchval,
      ),
    );
  }
}

class Mood extends StatelessWidget {
  final String text;
  Mood({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 12),
      child: Text(
        text,
        style: kLogInLabelTextStyle,
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final String title;
  final String subtitle;

  SettingItem({@required this.title, @required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: kLogInLabelTextStyle,
      ),
      subtitle: Text(
        subtitle,
        style: kSubtitleStyle,
      ),
    );
  }
}

const TextStyle kSubtitleStyle = TextStyle(color: Colors.grey, fontSize: 12);
