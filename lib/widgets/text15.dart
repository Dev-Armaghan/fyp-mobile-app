import 'package:flutter/material.dart';

class Text15 extends StatelessWidget {
  final String text;

Text15({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    );
  }
}
