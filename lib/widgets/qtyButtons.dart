import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QtyButtons extends StatelessWidget {
  const QtyButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    FontAwesomeIcons.minus,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Text('Single')
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Row(
              children: [
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    FontAwesomeIcons.minus,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Text('Strip')
          ],
        ),
      ],
    );
  }
}