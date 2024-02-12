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
        margin: const EdgeInsets.all(24),
        child: LayoutBuilder(builder: (context, constraints) {
          double titleSize = 14;
          double fontSize = 12;
          double marginTitle = 16;

          if (MediaQuery.of(context).size.width > 768) {
            titleSize = 18;
            fontSize = 18;
            marginTitle = 18;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/$image'),
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Container(
                  margin: EdgeInsets.only(top: marginTitle, bottom: 8),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: titleSize,
                        fontWeight: FontWeight.w700,
                        color: appColorBase100),
                  )),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Text(
                  description,
                  style: TextStyle(fontSize: fontSize),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Shop Wedding Collection',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: fontSize,
                  color: appColorPrimary,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          );
        }));
  }
}
