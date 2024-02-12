import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/colors.dart';

class DiscoverThumbnail extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const DiscoverThumbnail(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/images/$image'),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: appColorBase100),
              )),
          Container(
            margin: const EdgeInsets.all(8),
            child: Text(
              description,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Shop Wedding Collection',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: appColorPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
