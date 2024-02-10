import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  static const String route = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Page Second'),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back"))
      ],
    )));
  }
}
