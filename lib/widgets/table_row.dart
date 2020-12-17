import 'package:flutter/material.dart';

class RowData {
  static List<Padding> col = [
    Padding(
      padding: EdgeInsets.only(right: 5),
      child: Text(
        'SELL',
        style: TextStyle(
            color: Color.fromRGBO(255, 46, 80, 1),
            fontWeight: FontWeight.bold,
            fontSize: 15),
        textAlign: TextAlign.right,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 5),
      child: Text(
        'BUY',
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
        textAlign: TextAlign.right,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 5),
      child: Text(
        'Neutral',
        style: TextStyle(
            color: Colors.grey[700], fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 5),
      child: Text(
        'Less Volatility',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      ),
    ),
  ];

  static TableRow makeRow(String title, double val, int index) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 9),
          child: Text(val.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ),
        col[index],
      ],
      decoration: BoxDecoration(),
    );
  }
}
