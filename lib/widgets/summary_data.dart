import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colorful_bar.dart';

class SummaryData extends StatefulWidget {
  @override
  _SummaryDataState createState() => _SummaryDataState();
}

class _SummaryDataState extends State<SummaryData> {
  int pos=-1;
  var data = [
    ['1 MIN',false,1],
    ['5 MIN',false,2],
    ['15 MIN',false,3],
    ['30 MIN',false,4],
    ['1 HR',false,0],
    ['5 HR',false,4],
    ['1 DAY',false,3],
    ['1 WK',false,2],
    ['1 MON',false,1],
  ];

  void press(int index) {
    setState(() {
      for (int i = 0; i < data.length; i++) {
        if (i == index) continue;
        data[i][1] = false;
      }
      data[index][1] = !data[index][1];
      pos=data[index][2];
    });
  }

  Widget element(int index) {
    return Container(
      width: 80,
      height: 45,
      decoration: data[index][1]
          ? BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              borderRadius: BorderRadius.circular(4),
            )
          : null,
      child: TextButton(
          onPressed: () {
            press(index);
          },
          child: Text(
            data[index][0],
            style: TextStyle(
                fontSize: 13,
                color: !data[index][1] ? Colors.grey[500] : Colors.black,
                fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ColorfulBar(index: pos,),
        SizedBox(width: 50,),
        Container(
          padding: EdgeInsets.only(right: 15),
          height: 410,
          width: 80,
          child: ListView.builder(
            itemCount: 9,
            itemBuilder: (ctx, i) => element(i),
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
