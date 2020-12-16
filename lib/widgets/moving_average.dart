import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_for_paprclip/widgets/dropdown_menu.dart';
import 'buySell.dart';
import 'table_row.dart';

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
            style: TextStyle(color: Colors.white),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TITLE',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      Text('VALUE', style: TextStyle(color: Colors.grey[700])),
                      Text('TYPE', style: TextStyle(color: Colors.grey[700])),
                    ],
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
              Text('SELL',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 46, 80, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14)),
              14
            ),
            RowData.makeRow(
              'MA20',
              465.28,
              Text('BUY',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14)),
              14
            ),
            RowData.makeRow(
                'MA50',
                465.28,
                Text('BUY',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),14),
            RowData.makeRow(
                'MA100',
                465.28,
                Text('SELL',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 46, 80, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),14),
            RowData.makeRow(
                'MA200',
                465.28,
                Text('BUY',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),14),
          ],
        ),
      ],
    );
  }
}
