import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryData extends StatefulWidget {
  @override
  _SummaryDataState createState() => _SummaryDataState();
}

class _SummaryDataState extends State<SummaryData> {
  var check = [false, false, false, false, false, false, false, false, false];
  var data = ['1 MIN', '5 MIN', '15 MIN', '30 MIN', '1 HR', '5 HR', '1 DAY', '1 WK', '1 MON'];

  void press(int index) {
    setState(() {
      for (int i = 0; i < check.length; i++) {
        if(i==index) continue;
        check[i] = false;
      }
      check[index] = !check[index];
    });
  }

  Widget element(int index){
    return Container(
      width: 56,
      height: 36.7,
      decoration: check[index] ? BoxDecoration(
        border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 2),
        borderRadius: BorderRadius.circular(4),
      ) : null,
      child: TextButton(
          onPressed: () {
            press(index);
          },
          child: Text(
            data[index],
            style: TextStyle(fontSize: 12,
              color: !check[index] ? Colors.grey[500] : Colors.black,
              fontWeight: FontWeight.bold
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      height: 330,
      width: 80,
      child: ListView.builder(
         itemCount: 9,
        itemBuilder:(ctx, i) => element(i),
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
