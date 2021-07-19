import 'package:flutter/material.dart';

class CartProducts extends StatelessWidget {
  const CartProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Panadol',
          style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          width: 10,
        ),
        Text('Rs: 12.78/strip', style: TextStyle(fontSize: 15)),
        SizedBox(
          width: 10,
        ),
        Text('Total: 12.78',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
