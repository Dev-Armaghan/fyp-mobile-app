import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_rider/screens/medicineDescription.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                child: Icon(
                  IconData(
                    0xe156,
                    fontFamily: 'MaterialIcons',
                  ),
                  size: 40,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Order has been placed!!!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'On the way',
              style: TextStyle(color: Colors.black),
            ),
            FlatButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/cart'));
              },
              child: Text(
                'Back to the Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 65, right: 65),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
