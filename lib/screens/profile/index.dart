import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void back() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: const HeaderBar(),
      body: Column(
        children: [
          const Text('This is profile page'),
          IconButton(onPressed: back, icon: const Icon(Icons.arrow_left))
        ],
      ),
    );
  }
}
