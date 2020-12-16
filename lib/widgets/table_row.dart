import 'package:flutter/material.dart';

class RowData {

  static TableRow makeRow(String title, double val, Text sellBuy, double font) {
    return TableRow(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: font),
              ),
              Expanded(child: SizedBox()),
              Text(val.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: font)),
              Expanded(child: SizedBox()),
              sellBuy,
            ],
          ),
        ),
      ],
      decoration: BoxDecoration(),
    );
  }
}
