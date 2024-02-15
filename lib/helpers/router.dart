import 'package:flutter/material.dart';

class RouterUtils {
  static void pushTo(String target, BuildContext context) {
    var location = ModalRoute.of(context)?.settings.name;
    if (location != target) Navigator.of(context).pushNamed(target);
  }

  static void back(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
