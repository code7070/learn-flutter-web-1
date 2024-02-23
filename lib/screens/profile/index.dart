import 'package:flutter/material.dart';
import 'package:flutter_web/api/getAlbum/index.dart';
import 'package:flutter_web/components/header/index.dart';
import 'package:flutter_web/components/text/h1.dart';
import 'package:flutter_web/screens/profile/list.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAlbums() async {
      return await fetchAlbums();
    }

    Future<List<AlbumData>> album = getAlbums();

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
                    buildAlbumList(albums)
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
}
