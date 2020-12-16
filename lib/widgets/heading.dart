import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  final String text;

  const Heading({this.text}) : super();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 41),
      child: Text(
          text,
          style: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: 'IBMSans',
          fontSize: 18,
      )),
    );
  }
}
