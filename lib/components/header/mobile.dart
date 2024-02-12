import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/actions.dart';
import 'package:flutter_web/components/header/logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.0,
      title: const LogoFont(),
      actions: const [
        ActionsGroup(),
      ],
    );
  }
}
