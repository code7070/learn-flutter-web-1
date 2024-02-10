import 'package:div/div.dart';
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String title;

  const H1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double fontSize = 20.00;

      if (MediaQuery.of(context).size.width > 1024) {
        fontSize = 28;
      } else if (MediaQuery.of(context).size.width > 768) {
        fontSize = 22;
      }

      return Div(Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: fontSize,
            color: Colors.black87),
      ));
    });
  }
}
