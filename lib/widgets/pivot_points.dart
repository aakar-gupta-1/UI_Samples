import 'package:flutter/material.dart';
import 'package:ui_for_paprclip/widgets/dropdown_menu.dart';

class PivotPoints extends StatelessWidget {
  final pivotData = [
    ['S3', 456.87],
    ['S2', 456.87],
    ['S1', 456.87],
    ['PIVOT POINTS', 456.87],
    ['R1', 456.87],
    ['R2', 456.87],
    ['R3', 456.87],
  ];

  Widget pivot(int i) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            pivotData[i][0],
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          pivotData[i][1].toString(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: DropDownMenu(text: 'CLASSIC'),
        ),
        Container(
          height: pivotData.length*33.3,
          child: ListView.builder(
            itemBuilder: (ctx, index) => pivot(index),
            itemCount: pivotData.length,
            physics:  NeverScrollableScrollPhysics(),
          ),
        )
      ],
    );
  }
}
