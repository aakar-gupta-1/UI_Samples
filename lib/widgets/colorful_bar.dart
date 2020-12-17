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
          height: 66,
          width: 8,
          color: cList[i][1],
        ),
        (i==index) ? pointerBox(cList[i][0], cList[i][1]) : SizedBox(height: 0.0,width: 0.0,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Container(
        height: 330,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) => bar(index),
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
