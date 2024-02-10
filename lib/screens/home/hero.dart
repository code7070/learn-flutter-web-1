import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/responsive.dart';
import 'package:flutter_web/screens/home/hero_desktop.dart';
import 'package:flutter_web/screens/home/hero_mobile.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileView: HeroMobile(),
        desktopView: HeroDesktop(),
        tabletView: HeroMobile());
  }
}
