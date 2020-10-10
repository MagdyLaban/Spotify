import 'package:flutter/material.dart';
import 'package:spotifynew/components/search_bar.dart';
import 'package:spotifynew/screens/login/components/country_list.dart';
import 'package:spotifynew/utilities/constant.dart';

String countryName = 'Egypt';
String countryKey = '+20';

class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  Map<String, String> _countryDetails = {countryName: countryKey};

  void _sendDataBack(BuildContext context) {
    Navigator.pop(context, _countryDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Choose your country',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.grey,
            ),
            onPressed: () {
              _sendDataBack(context);
            }),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            SearchBar(
              searchBarStyle: kSearchBarDarkStyle,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: countryList[0].length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.09,
                        child: InkWell(
                          onTap: () {
                            _countryDetails = {
                              countryList[0].keys.toList()[index]:
                                  countryList[0].values.toList()[index]
                            };
                            _sendDataBack(context);
                            countryName = countryList[0].keys.toList()[index];
                            countryKey = countryList[0].values.toList()[index];
                          },
                          child: Row(
                            children: [
                              Text(
                                countryList[0].keys.toList()[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Text(
                                countryList[0].values.toList()[index],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
