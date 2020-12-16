import 'package:flutter/material.dart';
class DropDownMenu extends StatelessWidget {
  final String text;

  const DropDownMenu({ this.text}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18,right: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: text,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.grey, fontSize: 16),
          onChanged: (value){},
          items: <String>[text]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value+'        '),
            );
          }).toList(),
        ),
      ),
    );
  }
}
