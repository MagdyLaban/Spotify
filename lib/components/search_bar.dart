import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          filled: true,
          fillColor: Color(0xffffffff),
          prefixIcon: Icon(Icons.search,color: Colors.grey[600],),
          hintText: 'Artist,Song or Albums',
          hintStyle: TextStyle(
            color: kBackgroundColor,
            fontSize: 14,

          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        ),
      ),
    );
  }
}