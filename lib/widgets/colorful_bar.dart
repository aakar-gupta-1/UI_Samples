import 'package:flutter/material.dart';

class ColorfulBar extends StatelessWidget {
  final List<Color> cList = [
    Color.fromRGBO(0, 122, 255, 1),
    Color.fromRGBO(0, 122, 255, .6),
    Colors.grey[600],
    Color.fromRGBO(255, 46, 80, .6),
    Color.fromRGBO(255, 46, 80, 1),
  ];

  Widget bar(int i) {
    return Container(
      height: 66,
      color: cList[i],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Row(children: [
        Container(
          width: 8,
          height: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (ctx, index) => bar(index),
          ),
          // Column(
          //   children: [
          //     Container(
          //       height: 66,
          //       width: 8,
          //       decoration: BoxDecoration(
          //         color: Color.fromRGBO(0, 122, 255, 1),
          //         borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(20),
          //             topLeft: Radius.circular(20)),
          //       ),
          //     ),
          //     Container(
          //       height: 66,
          //       width: 8,
          //       color: Color.fromRGBO(0, 122, 255, .6),
          //     ),
          //     Container(
          //       height: 66,
          //       width: 8,
          //       color: Colors.grey[600],
          //     ),
          //     Container(
          //       height: 66,
          //       width: 8,
          //       color: Color.fromRGBO(255, 46, 80, .6),
          //     ),
          //     Container(
          //       height: 66,
          //       width: 8,
          //       decoration: BoxDecoration(
          //         color: Color.fromRGBO(255, 46, 80, 1),
          //         borderRadius: BorderRadius.only(
          //             bottomRight: Radius.circular(20),
          //             bottomLeft: Radius.circular(20)),
          //       ),
          //     ),
          //   ],
          // ),
        ),
        Stack(
          children: [
            Icon(
              Icons.arrow_left,
              color: Colors.grey[600],
              size: 45,
            ),
            Positioned(
              left: 25,
              top: 8,
              child: Container(
                width: 80,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Neutral',
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
        ),
      ]),
    );
  }
}
