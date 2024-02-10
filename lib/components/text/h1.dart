import 'package:div/div.dart';
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String title;

  const H1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Div(Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black87),
    ));
  }
}
