import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/logo.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/helpers/colors.dart';
import 'package:flutter_web/helpers/router.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appColorBase,
        title: const LogoFont(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: const H1(title: 'You are lost. Sorry, please back'),
            ),
            TextButton.icon(
                onPressed: () {
                  RouterUtils.back(context);
                },
                icon: const Icon(Icons.arrow_left),
                label: const Text('Saya Akan Kembali'))
          ],
        ),
      ),
    );
  }
}
