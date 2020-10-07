import 'package:flutter/material.dart';
import 'package:spotifynew/utilities/constant.dart';
class SearchBar extends StatelessWidget {
  SearchBar({@required this.searchBarStyle});
  final InputDecoration searchBarStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        decoration: searchBarStyle,
      ),
    );
  }
}

