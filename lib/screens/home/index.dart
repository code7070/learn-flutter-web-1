import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/index.dart';
import 'package:flutter_web/screens/home/hero.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: const HomeBanner(),
          ),
        ],
      ),
    );
  }
}
