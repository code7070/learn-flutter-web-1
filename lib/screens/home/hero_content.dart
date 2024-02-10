import 'package:flutter/material.dart';
import 'package:flutter_web/components/button/primary_outline.dart';
import 'package:flutter_web/components/text/body.dart';
import 'package:flutter_web/components/text/h1.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              child: const H1(title: 'Collection Camilla'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: const TextBody(
                  text:
                      'More than a flower, the Artsy camellia is an inspiration. Its geometric curves lend themselves to an endless variety of styles, from the most naturalistic to the most abstract.'),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: const ButtonPrimaryOutline(
                    caption: 'See Camelia Collections'))
          ],
        ),
      ],
    );
  }
}
