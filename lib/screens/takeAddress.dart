import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_rider/screens/confirmOrder.dart';

import 'createAddress.dart';

class ConfirmAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Address'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2.0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: false,
                              groupValue: null,
                              onChanged: (value) {},
                              activeColor: Colors.orange,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Nab office street grean huts lane A',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return CreateAddress();
                                  })),
                              icon: Icon(FontAwesomeIcons.pencilAlt),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
              return OrderConfirm();
            })),
            child: Text(
              'Next',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15, bottom: 15, left: 65, right: 65),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
