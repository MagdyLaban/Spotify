import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0),
        child: Text(
          'Category',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff046d50), Colors.greenAccent]
          ),
        borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}
