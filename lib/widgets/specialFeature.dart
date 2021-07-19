import 'package:flutter/material.dart';

class SpecialFeatures extends StatelessWidget {

  final String text;
  final Function navigator;

  SpecialFeatures({this.text,this.navigator});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: navigator,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}