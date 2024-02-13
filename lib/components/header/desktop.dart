import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/actions.dart';
import 'package:flutter_web/components/header/logo.dart';

class HeaderDesktop extends StatelessWidget implements PreferredSizeWidget {
  const HeaderDesktop({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const LogoFont(),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Collections'),
                Text('Coco Crush'),
                Text('High Jewelry'),
                Text('Bridal'),
                Text('Care & Services'),
              ],
            ),
          )),
          const ActionsGroup()
        ],
      ),
      centerTitle: false,
      elevation: 0.0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      automaticallyImplyLeading: false,
    );
  }
}
