import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web/components/header/index.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/helpers/colors.dart';
import 'package:flutter_web/helpers/router.dart';
import 'package:flutter_web/screens/profile/album.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void back() {
      RouterUtils.back(context);
    }

    String endpoint = 'https://jsonplaceholder.typicode.com/albums';

    Future<List<Album>> fetchAlbum() async {
      var resp = await http.get(Uri.parse(endpoint));
      if (resp.statusCode == 200) {
        // return Album.fromJson(jsonDecode(resp.body) as Map<String, dynamic>);
        final List body = json.decode(resp.body);
        return body.map((i) => Album.fromJson(i)).toList();
      } else {
        throw Exception('Failed to load Album :(');
      }
    }

    Future<List<Album>> album = fetchAlbum();

    return Scaffold(
      appBar: const HeaderBar(),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: album,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final albums = snapshot.data!;
                return Column(
                  children: [
                    H1(title: 'Data Album: ${albums.length}'),
                    buildAlbum(albums)
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }

  Widget buildAlbum(List<Album> albums) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: albums.length,
      itemBuilder: (context, index) {
        final album = albums[index];
        return Container(
          // color: appColorGray,
          width: double.maxFinite,
          height: 100,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: appColorGray,
              border: Border.all(color: appColorPrimary, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(
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
        );
      },
    );
  }
}
