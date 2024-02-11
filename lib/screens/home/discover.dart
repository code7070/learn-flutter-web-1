import 'package:flutter/material.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/helpers/responsive.dart';
import 'package:flutter_web/screens/home/discover_thumbnail.dart';

class HomeDiscover extends StatelessWidget {
  const HomeDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> thumbnails = [
      const ThumbnailDiscover(
          title: 'Summer 2021: THE WEDDING',
          description:
              'Celebrate wedding in style with our elegant and eye-catching Jewel',
          linkText: 'Shop Wedding Collection',
          image: 'discover-thumb-1.jpg'),
      const ThumbnailDiscover(
          title: 'Little Collection 2021',
          description:
              'Mini trendsetters Mia and Tatiana step out with our striking pendant and adorable quilted jewel.',
          linkText: 'Shop Little Collection',
          image: 'discover-thumb-2.jpg')
    ];

    var mobileView = Column(children: thumbnails);
    var desktopView = Row(
      children: thumbnails,
    );

    return Container(
      margin: const EdgeInsets.only(top: 48, bottom: 48),
      child: Column(
        children: [
          const H1(title: 'Discover More'),
          Container(
            margin: const EdgeInsets.only(bottom: 96),
            child: ResponsiveLayout(
                mobileView: mobileView,
                desktopView: desktopView,
                tabletView: desktopView),
          )
        ],
      ),
    );
  }
}
