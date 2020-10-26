import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotifynew/screens/bottom_nav_screens/premium_screen.dart';
import 'package:spotifynew/utilities/constant.dart';
import 'package:spotifynew/components/rounded_action_button.dart';

class SettingScreen extends StatefulWidget {
  static const String id = 'setting screen';
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switch1Val = false;
  bool switch2Val = false;
  bool switch3Val = false;
  bool switch4Val = false;
  bool switch5Val = false;
  bool switch6Val = false;
  bool switch7Val = false;
  bool switch8Val = false;
  bool switch9Val = false;
  bool switch10Val = false;
  bool switch11Val = false;
  bool switch12Val = false;
  bool switch13Val = false;

  int seconds = 0;
  String dropMenu = 'Only in a car';

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
              ProfileButton(),
              Title(text: 'Data Saver'),
              SettingItemWithSwitch(
                title: 'On',
                item: 'Sets your music quality to low and disables canvas',
                switchVal: switch1Val,
                changeSwitchVal: (bool val) {
                  setState(() {
                    switch1Val = val;
                  });
                },
              ),
              Title(text: 'Playback'),
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
                          onChanged: (double newVal) {
                            setState(() {
                              seconds = newVal.round();
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
              ),     //<< Slider
              SettingItemWithSwitch(
                title: 'Gapless',
                item: 'Allows gapless playback',
                switchVal: switch2Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch2Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Automix',
                item: 'Allow smooth transitions between songs in a playlist .',
                switchVal: switch3Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch3Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Allow Explict Content',
                item: 'Turn on to play explict content ',
                switchVal: switch4Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch4Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Show unplayable songs',
                item: 'Show songs that are unplayable .',
                switchVal: switch5Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch5Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Normalize Volume',
                item: 'Set tje same volume level for all tracks ',
                switchVal: switch6Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch6Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Device Broadcast Status',
                item:
                    'Allow other apps on your device to see what you are listening to.',
                switchVal: switch7Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch7Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Autoplay',
                item:
                    'Keep on listening to similar tracks when your music ends .',
                switchVal: switch8Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch8Val = newVal;
                  });
                },
              ),
              Title(text: 'Devices'),
              SettingItem(
                  title: 'Connect to a device',
                  subtitle: 'Listen and Control Spotify on your devices'),
              SettingItemWithSwitch(
                title: 'Show local device only',
                item:
                    'Only show devices on your WiFi or ethernet in the devices menu .',
                switchVal: switch9Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch9Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Spotify Connect in background',
                item:
                    'Allow Spotify Connect to keep Spotify running when the app in background',
                switchVal: switch10Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch10Val = newVal;
                  });
                },
              ),
              Title(text: 'Connect to Apps'),
              SettingItem(
                  title: 'Navigation',
                  subtitle: 'Connect with navigation apps'),
              Title(text: 'Car mode'),
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
                    value: dropMenu,
                    style: kSignUpFormTextStyle,
                    dropdownColor: Color(0xff282828),
                    itemHeight: 50,
                    autofocus: true,
                    underline: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.4),
                    ),
                    onChanged: (String newVal) {
                      setState(() {
                        dropMenu = newVal;
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
              ]),   // << Dropdown menu
              SettingItemWithSwitch(
                title: 'Keep app open on screen',
                item:
                    'Turn this on and the app will stay up on your screen while you are in car mode',
                switchVal: switch11Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch11Val = newVal;
                  });
                },
              ),
              Title(text: 'Social'),
              SettingItemWithSwitch(
                title: 'Private session',
                item: 'Start a private session to listen anonymously',
                switchVal: switch12Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch12Val = newVal;
                  });
                },
              ),
              SettingItemWithSwitch(
                title: 'Listening activity',
                item: 'Share what i listen to with my followers on Spotify .',
                switchVal: switch13Val,
                changeSwitchVal: (bool newVal) {
                  setState(() {
                    switch13Val = newVal;
                  });
                },
              ),
              Title(text: 'Connect to Facebook'),
              Title(text: 'Storage'),
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
              Title(text: 'Notifications'),
              SettingItem(
                  title: 'Notifications',
                  subtitle: 'Choose which notifications to receive '),
              Title(text: 'About'),
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
              Title(text: 'Other'),
              SettingItem(
                  title: 'Log out',
                  subtitle: 'You are logged in as Esam Smesm'),
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

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child:Icon(Feather.user,size: 40,color: kBackgroundColor,),
            radius: 28,
            backgroundColor: Colors.deepOrange,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Esam Smesm',
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

class SettingItemWithSwitch extends StatelessWidget {

  SettingItemWithSwitch(
      {@required this.title,
      @required this.item,
      this.switchVal,
      this.changeSwitchVal
      });

  final String title;
  final String item;
  final Function changeSwitchVal;
  final bool switchVal;

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
        value: switchVal,
        activeTrackColor: Colors.green.withOpacity(.3),
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.grey,
        onChanged: changeSwitchVal,
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String text;
  Title({@required this.text});

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


