import 'package:flutter/material.dart';

class BuySell extends StatelessWidget {
  final int val;
  final String txt;
  String v;

  BuySell(this.val, this.txt) {
    if (val == null)
      v = '-';
    else
      v = val.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          v,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
