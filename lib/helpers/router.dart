import 'package:flutter/material.dart';

class RouterUtils {
  void pushTo(String target, BuildContext context, Object? arguments) {
    var location = ModalRoute.of(context)?.settings.name;
    if (location != target) {
      Navigator.of(context).pushNamed(target, arguments: arguments);
    }
  }

  static void back(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
