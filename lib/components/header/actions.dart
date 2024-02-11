import 'package:flutter/material.dart';

class ActionsGroup extends StatelessWidget {
  const ActionsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ),
        Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.people),
            ))
      ],
    );
  }
}
