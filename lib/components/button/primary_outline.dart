import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/colors.dart';

class ButtonPrimaryOutline extends StatelessWidget {
  final String caption;

  const ButtonPrimaryOutline({super.key, required this.caption});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: const ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(100, 44)),
            backgroundColor: MaterialStatePropertyAll<Color>(appColorBase),
            shadowColor: MaterialStatePropertyAll<Color>(appColorPrimary),
            padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 14, horizontal: 14)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                side: BorderSide(
                  color: appColorPrimary,
                  width: 1,
                )))),
        child: Text(caption,
            style: const TextStyle(
                color: appColorPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 16)));
  }
}
