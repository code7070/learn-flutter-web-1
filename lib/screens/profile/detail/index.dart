import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/index.dart';
import 'package:flutter_web/components/text/h1.dart';

class AlbumDetail extends StatelessWidget {
  const AlbumDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: const HeaderBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: H1(title: 'Album Detail ${args.title}'))
          ],
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final int id;
  final int userId;

  ScreenArguments(this.title, this.id, this.userId);
}
