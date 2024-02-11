import 'package:div/div.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/colors.dart';

class ThumbnailPendant extends StatelessWidget {
  final String title;
  final dynamic image;
  const ThumbnailPendant({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    var imageName = AssetImage("assets/images/$image");
    return Expanded(
        flex: 1,
        child: Div(
          Column(
            children: [
              Image(
                image: imageName,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: appColorBase100),
                  ),
                ),
              )
            ],
          ),
          // color: appColorPrimary,
          margin: const EdgeInsets.all(16),
        ));
  }
}
