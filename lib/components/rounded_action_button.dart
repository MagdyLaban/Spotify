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
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    );
  }
}