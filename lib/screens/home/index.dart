import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/index.dart';
import 'package:flutter_web/screens/home/discover.dart';
import 'package:flutter_web/screens/home/drawer.dart';
import 'package:flutter_web/screens/home/hero.dart';
import 'package:flutter_web/screens/home/pendant.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      drawer: const HeaderDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: const [HomeBanner(), HomePendant(), HomeDiscover()],
        ),
      ),
    );
  }
}
