import 'package:div/div.dart';
import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;

  const TextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Div(
        margin: const EdgeInsets.only(top: 16, bottom: 16),
        Text(text,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black87)));
  }
}
