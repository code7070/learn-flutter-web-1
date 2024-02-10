import "package:div/div.dart";
import "package:flutter/material.dart";

class LogoFont extends StatelessWidget {
  const LogoFont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Div(const Text(
      'Artsy Colelctives',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    ));
  }
}
