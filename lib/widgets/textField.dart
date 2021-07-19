import 'package:flutter/material.dart';


class textfield extends StatelessWidget {
  final String hintText;
  final errorMsg;
  final ImageProvider image;
  final Function textFieldValue;
  textfield({this.hintText,this.image,this.textFieldValue,this.errorMsg});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: textFieldValue,
      autofocus: false,
      decoration: InputDecoration(
        errorText: errorMsg,
          errorMaxLines: 2,
          errorStyle: TextStyle(color: Colors.red),
          icon: Image(
            color: Colors.black,
            image: image,
          ),
          hintText: hintText),
    );
  }
}