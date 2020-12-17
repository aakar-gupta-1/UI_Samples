import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_for_paprclip/widgets/dropdown_menu.dart';
import '../buySell.dart';
import '../table_row.dart';

class MovingAverages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlatButton(
          minWidth: 60,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Text(
            'Buy',
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
          color: Colors.blue[700],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BuySell(7, 'Buy'),
            BuySell(null, 'Neutral'),
            BuySell(5, 'Sell'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          child: DropDownMenu(text: 'EXPONENTIAL'),
        ),
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          defaultColumnWidth: IntrinsicColumnWidth(flex: 2),
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'TITLE',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  child: Text(
                    'VALUE',
                    style: TextStyle(color: Colors.grey[700],
                      fontSize: 16,),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    'TYPE',
                    style: TextStyle(color: Colors.grey[700],fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            RowData.makeRow(
              'MA10',
              465.28,
              0,
            ),
            RowData.makeRow(
              'MA20',
              465.28,
              1,
            ),
            RowData.makeRow(
              'MA50',
              465.28,
              1,
            ),
            RowData.makeRow('MA100', 465.28, 0),
            RowData.makeRow('MA200', 465.28, 1),
          ],
        ),
      ],
    );
  }
}
