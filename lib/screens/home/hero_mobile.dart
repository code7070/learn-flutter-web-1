import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home/hero_content.dart';
import 'package:flutter_web/screens/home/hero_image.dart';

class HeroMobile extends StatelessWidget {
  const HeroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 24),
      child: Column(
        children: <Widget>[
          const HeroContent(),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 24),
              child: const HeroImage())
        ],
      ),
    );
  }
}
