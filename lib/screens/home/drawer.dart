import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/logo.dart';
import 'package:flutter_web/helpers/colors.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => DrawerElement();
}

class DrawerElement extends State<HeaderDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width > 1024) {
        return const SizedBox.shrink();
      }
      return Drawer(
        width: MediaQuery.of(context).size.width,
        backgroundColor: Colors.white,
        elevation: 0.0,
        child: ListView(
          children: [
            drawerHead(context),
            const MenuList(
              title: 'Collections',
              subtitle: 'All Artsy fine jewelry',
            ),
            const MenuList(
              title: 'Coco Crush',
              subtitle: 'Special Coco Crush Edition',
            ),
            const MenuList(
              title: 'High Jewelry',
              subtitle: 'Artsy high jewelry signature',
            ),
            const MenuList(
              title: 'Bridal',
              subtitle: 'Wedding, Engagement Rings',
            ),
            const MenuList(
              title: 'Care & Services',
              subtitle: 'Book an Appointment',
            ),
          ],
        ),
      );
    });
  }

  Row drawerHead(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
        ),
        const Expanded(
          flex: 1,
          // width: MediaQuery.of(context).size.width * 0.70,
          child: SizedBox(
            height: 40,
            child: Center(child: LogoFont()),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          child: IconButton(
            onPressed: _closeDrawer,
            icon: const Icon(Icons.close),
          ),
        )
      ],
    );
  }
}

class MenuList extends StatelessWidget {
  final String title;
  final String subtitle;

  const MenuList({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      height: 84,
      color: appColorGray,
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(title), Text(subtitle)]),
            )),
            const SizedBox(
              width: 84,
              child: Text('Image'),
            )
          ],
        ),
      ),
    );
  }
}
