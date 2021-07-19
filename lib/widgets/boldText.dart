import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {

  final String text;
  BoldText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
