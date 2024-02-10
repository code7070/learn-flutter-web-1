import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/desktop.dart';
import 'package:flutter_web/components/header/mobile.dart';
import 'package:flutter_web/helpers/responsive.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileView: HeaderMobile(),
      desktopView: HeaderDesktop(),
      tabletView: HeaderMobile(),
    );
  }
}
