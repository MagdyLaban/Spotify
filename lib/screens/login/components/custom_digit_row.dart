import 'package:flutter/material.dart';
import 'package:spotifynew/screens/login/components/mobile_code_digit.dart';
import 'package:spotifynew/utilities/constant.dart';

class CustomDigitRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.09,
                        child: MobileCodeDigit(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Text(
          'We sent an SMS with a 6-digit code to +201062673030.',
          style: kTextFieldConditionTextStyle,
        )
      ],
    );
  }
}
