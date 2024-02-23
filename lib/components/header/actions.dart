import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/router.dart';

class ActionsGroup extends StatelessWidget {
  const ActionsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RouterUtils router = RouterUtils();

    void pushToProfile() {
      // RouterUtils.pushTo('/album', context);
      router.pushTo('/album', context, null);
    }

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
              onPressed: pushToProfile,
              icon: const Icon(Icons.people),
            ))
      ],
    );
  }
}
