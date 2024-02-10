import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Image(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/camila-collection.png')));
  }
}
