import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.6),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Egypt',
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
                  padding: EdgeInsets.only(right: 15.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
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
                      '+20',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          letterSpacing: 1.2),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.4,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TextFormField(
                    cursorRadius: Radius.zero,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
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
