import 'package:flutter/material.dart';
import 'package:spotifynew/screens/login/country_screen.dart';
import 'package:spotifynew/utilities/constant.dart';

class MobileNumber extends StatefulWidget {
  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  Map<String, String> countryDetails = {'Egypt': '+20'};
  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CountryScreen(),
        ));
    setState(() {
      countryDetails = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
        color: kSecondaryColor2,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                _awaitReturnValueFromSecondScreen(context);
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      countryDetails.keys.toList()[0],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 1.2),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 13.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1.5,
            color: Colors.white,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      countryDetails.values.toList()[0],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          letterSpacing: 1.2),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.7,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      letterSpacing: 1.2,
                    ),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 6, left: 10),
                      hintText: 'Phone number',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
