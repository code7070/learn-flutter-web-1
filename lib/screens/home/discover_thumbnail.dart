import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/colors.dart';

class ThumbnailDiscover extends StatelessWidget {
  final String title;
  final String description;
  final String linkText;
  final String image;

  const ThumbnailDiscover(
      {super.key,
      required this.title,
      required this.description,
      required this.linkText,
      required this.image});

  @override
  Widget build(BuildContext context) {
    var imageName = AssetImage("assets/images/$image");

    return Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: imageName,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Title(title: title),
                    Description(description: description)
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(linkText,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: appColorPrimary,
                          fontSize: 14))),
            ],
          ),
        ));
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Text(
        description,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: appColorBase100,
          fontSize: 12,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 14, color: appColorBase100),
      ),
    );
  }
}
