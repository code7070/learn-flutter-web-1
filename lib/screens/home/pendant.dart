import 'package:flutter/material.dart';
import 'package:flutter_web/components/button/primary_outline.dart';
import 'package:flutter_web/components/text/body.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/helpers/responsive.dart';
import 'package:flutter_web/screens/home/pendant_thumbnail.dart';

class HomePendant extends StatelessWidget {
  const HomePendant({super.key});

  @override
  Widget build(BuildContext context) {
    const display1 = ThumbnailPendant(
        title: 'Leaf Stud Earrings', image: 'pendant-earings.jpg');

    const display2 = ThumbnailPendant(
        title: 'Leaf Pendant Bead Necklace', image: 'pendant-necklace.jpg');

    const display3 =
        ThumbnailPendant(title: 'Leaf Band Ring', image: 'pendant-ring.jpg');

    const display4 = ThumbnailPendant(
        title: 'Leaf Bead Bracelet', image: 'pendant-barcelet.jpg');

    var rowMobile = Column(children: [
      Row(
        children: const [display1, display2],
      ),
      Row(
        children: const [display3, display4],
      ),
    ]);

    var rowDesktop =
        Row(children: const [display1, display2, display3, display4]);

    return Column(
      children: [
        const H1(title: 'Leaf Pendant Collections'),
        const TextBody(
            text: 'Style your modest wear with our understated picks'),
        const ButtonPrimaryOutline(caption: 'Shop Now'),
        const Divider(
          height: 32,
          color: Colors.transparent,
        ),
        ResponsiveLayout(
          mobileView: rowMobile,
          desktopView: rowDesktop,
          tabletView: rowMobile,
        )
      ],
    );
  }
}
