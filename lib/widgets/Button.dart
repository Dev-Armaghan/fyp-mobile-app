import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Function navigator;

  Button({this.text,this.navigator});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: navigator,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }
}