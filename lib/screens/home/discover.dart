import 'package:flutter/material.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/helpers/responsive.dart';
import 'package:flutter_web/screens/home/discover_thumbnail.dart';

class HomeDiscover extends StatelessWidget {
  const HomeDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    const thumb1 = DiscoverThumbnail(
      title: 'Summer 2021: THE WEDDING',
      image: 'discover-thumb-1.jpg',
      description:
          'Celebrate wedding in style with our elegant and eye-catching Jewel',
    );

    const thumb2 = DiscoverThumbnail(
        image: 'discover-thumb-2.jpg',
        title: 'Little Collection 2021',
        description:
            'Mini trendsetters Mia and Tatiana step out with our striking pendant and adorable quilted jewel.');

    var desktopThumbnail = Container(
      constraints: const BoxConstraints(maxWidth: 1400),
      child: Row(
        children: const [
          Expanded(flex: 1, child: thumb1),
          Expanded(flex: 1, child: thumb2)
        ],
      ),
    );

    var mobileThumbnail = Container(
      child: Column(children: const [thumb1, thumb2]),
    );

    return Container(
      margin: const EdgeInsets.only(top: 48, bottom: 48),
      constraints: const BoxConstraints(
        maxWidth: 1500,
      ),
      child: Column(
        children: [
          const H1(title: 'Discover More'),
          ResponsiveLayout(
              mobileView: mobileThumbnail,
              desktopView: desktopThumbnail,
              tabletView: desktopThumbnail)
        ],
      ),
    );
  }
}
