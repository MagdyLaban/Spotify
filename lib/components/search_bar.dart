import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({@required this.searchBarStyle});
  final InputDecoration searchBarStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        cursorColor: Colors.white,
        cursorWidth: 0.7,
        decoration: searchBarStyle,
      ),
    );
  }
}
