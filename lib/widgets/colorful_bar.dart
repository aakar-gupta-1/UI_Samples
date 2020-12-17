import 'package:flutter/material.dart';

class ColorfulBar extends StatelessWidget {
  final int index;

  ColorfulBar({this.index}) : super();

  Widget pointerBox(String text, Color color) {
    return Stack(
      children: [
        Icon(
          Icons.arrow_left,
          color: color,
          size: 45,
        ),
        Positioned(
          left: 25,
          top: 8,
          child: Container(
            width: 80,
            height: 28,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
      overflow: Overflow.visible,
    );
  }

  final cList = [
    ['Best', Color.fromRGBO(0, 122, 255, 1)],
    ['Better', Colors.cyan],
    ['Neutral', Colors.grey[700]],
    ['Worse', Colors.pinkAccent[100]],
    ['Worst', Color.fromRGBO(255, 46, 80, 1)],
  ];

  Widget bar(int i) {
    return Row(
      children: [
        Container(
          height: 82,
          width: 12,
          decoration: BoxDecoration(
            color: cList[i][1],
            borderRadius: BorderRadius.vertical(top: (i==0) ? Radius.circular(20): Radius.zero ,bottom: (i==4) ? Radius.circular(20) : Radius.zero),
          ),
        ),
        (i==index) ? pointerBox(cList[i][0], cList[i][1]) : SizedBox(height: 0.0,width: 0.0,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40),
      child: Container(
        height: 410,
        width: 80,

        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) => bar(index),
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
