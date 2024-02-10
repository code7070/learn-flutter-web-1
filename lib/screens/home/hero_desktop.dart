import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home/hero_content.dart';
import 'package:flutter_web/screens/home/hero_image.dart';

class HeroDesktop extends StatelessWidget {
  const HeroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 24),
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width / 2,
              child: const HeroContent()),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: const HeroImage(),
          )
        ],
      ),
    );
  }
}
