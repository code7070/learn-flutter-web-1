import 'package:flutter/material.dart';
import 'package:flutter_web/api/getAlbum/index.dart';
import 'package:flutter_web/helpers/colors.dart';
import 'package:flutter_web/helpers/router.dart';
import 'package:flutter_web/screens/profile/detail/index.dart';

Widget buildAlbumList(List<AlbumData> albums) {
  RouterUtils router = RouterUtils();

  return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: albums.length,
    itemBuilder: (context, index) {
      final album = albums[index];
      return Container(
        // color: appColorGray,
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: appColorGray,
            border: Border.all(color: appColorPrimary, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(album.id!.toString()),
                Expanded(
                    child: Text(
                  album.title!.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ))
              ],
            ),
            TextButton(
                onPressed: () {
                  router.pushTo('/album/detail', context,
                      ScreenArguments(album.title!, album.id!, album.userId!));
                },
                child: const Text('Open Album'))
          ],
        ),
      );
    },
  );
}
