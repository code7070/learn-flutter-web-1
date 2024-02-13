import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home/index.dart';
import 'package:flutter_web/screens/profile/index.dart';

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Web WKND',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/profile': (context) => const ProfileScreen(),
        });
  }
}
