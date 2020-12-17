import 'package:flutter/material.dart';
import 'package:ui_for_paprclip/widgets/dropdown_menu.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/ui_for_paprclip/lib/widgets/Moving/moving_average.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/ui_for_paprclip/lib/widgets/Pivot/pivot_points.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/ui_for_paprclip/lib/widgets/Summary/summary_data.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/ui_for_paprclip/lib/widgets/Technical/technical_indicators.dart';
import '../widgets/heading.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
        title: Text(
          'Sensex',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'IBMSans',
              color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropDownMenu(
                      text: 'Technical',
                    ),
                  ),
                ],
              ),
              Heading(text: 'Summary'),
              SummaryData(),
              Heading(text: 'Moving Averages'),
              MovingAverages(),
              Heading(text: 'Technical Indicators'),
              TechnicalIndicators(),
              Heading(text: 'Pivot Points'),
              PivotPoints(),
              Center(child: Text('MADE BY AAKAR',style: TextStyle(color: Colors.grey[500],letterSpacing: 1,wordSpacing: 4),),)
            ],
          ),
        ),
      ),
    );
  }
}
