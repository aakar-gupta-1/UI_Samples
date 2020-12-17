import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_for_paprclip/widgets/buySell.dart';
import 'package:ui_for_paprclip/widgets/table_row.dart';

class TechnicalIndicators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          minWidth: 60,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Text(
            'Strong Sell',
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
          color: Color.fromRGBO(255, 46, 80, 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuySell(1, 'Buy'),
              BuySell(1, 'Neutral'),
              BuySell(9, 'Sell'),
            ],
          ),
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
                    'NAME',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'ACTION',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    'VALUE',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            RowData.makeRow('RSI(14)', -53.6549, 2),
            RowData.makeRow('STOCH(9,6)', -53.6549, 0),
            RowData.makeRow('STOCHRSI(14)', -53.6549, 0),
            RowData.makeRow('MACD(12,26)', -53.6549, 1),
            RowData.makeRow('ADX(14)', -53.6549, 0),
            RowData.makeRow('Williams %R', -53.6549, 0),
            RowData.makeRow('CCI(14)', -53.6549, 0),
            RowData.makeRow('ATR(14)', -53.6549, 0),
            RowData.makeRow('Highs/Lows(14)', -53.6549, 0),
            RowData.makeRow('Ultimate Oscillator', -53.6549, 0),
            RowData.makeRow('ROC', -53.6549, 0),
            RowData.makeRow('Bull/Bear Power(13)', -53.6549, 3),
          ],
        ),
      ],
    );
  }
}
