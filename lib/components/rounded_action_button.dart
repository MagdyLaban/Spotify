import 'package:flutter/material.dart';

class RoundedActionButton extends StatelessWidget {

  RoundedActionButton({@required this.title,@required this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.white,
      child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 2),),
          ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    );
  }
}