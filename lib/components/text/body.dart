import 'package:div/div.dart';
import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;

  const TextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double fontSize = 12;

      if (MediaQuery.of(context).size.width > 1024) {
        fontSize = 18;
      } else if (MediaQuery.of(context).size.width > 768) {
        fontSize = 14;
      }

      return Div(
          margin: const EdgeInsets.only(top: 16, bottom: 16),
          Text(text,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(221, 44, 42, 42))));
    });
  }
}
