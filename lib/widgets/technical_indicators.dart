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
            style: TextStyle(color: Colors.white),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NAME',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      Text('ACTION', style: TextStyle(color: Colors.grey[700])),
                      Text('VALUE', style: TextStyle(color: Colors.grey[700])),
                    ],
                  ),
                ),
              ],
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            RowData.makeRow(
                'RSI(14)',
                -53.6549,
                Text('Neutral',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'STOCH(9,6)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'STOCHRSI(14)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'MACD(12,26)',
                -53.6549,
                Text('Buy',
                    style: TextStyle(color: Colors.blue, fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'ADX(14)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'Williams %R',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'CCI(14)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'ATR(14)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'Highs/Lows(14)',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'Ultimate Oscillator',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'ROC',
                -53.6549,
                Text('Sell',
                    style: TextStyle(color: Color.fromRGBO(255, 46, 80, 1), fontSize: 12,fontWeight: FontWeight.bold)),
                12),
            RowData.makeRow(
                'Bull/Bear Power(13)',
                -53.6549,
                Text('Less Volatility',
                    style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold)),
                12),
          ],
        ),
      ],
    );
  }
}
