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
    List<Widget> elms = [
      const ThumbnailPendant(
          title: 'Leaf Stud Earrings', image: 'pendant-earings.jpg'),
      const ThumbnailPendant(
          title: 'Leaf Pendant Bead Necklace', image: 'pendant-necklace.jpg'),
      const ThumbnailPendant(
          title: 'Leaf Band Ring', image: 'pendant-ring.jpg'),
      const ThumbnailPendant(
          title: 'Leaf Bead Bracelet', image: 'pendant-barcelet.jpg'),
    ];

    var rowMobile = Column(children: [
      Row(
        children: elms.sublist(0, 2),
      ),
      Row(
        children: elms.sublist(2),
      ),
    ]);

    var rowDesktop = Row(children: elms);

    return Container(
      margin: const EdgeInsets.only(top: 48, bottom: 48),
      constraints: const BoxConstraints(
        maxWidth: 1500,
      ),
      child: Column(
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
            tabletView: rowDesktop,
          )
        ],
      ),
    );
  }
}
