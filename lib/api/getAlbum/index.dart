import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_web/api/base.dart';

class AlbumData {
  int? userId;
  int? id;
  String? title;

  AlbumData({this.userId, this.id, this.title});

  AlbumData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }
}

Future<List<AlbumData>> fetchAlbums() async {
  String endpoint = BaseAPI.endpoint;

  var resp = await http.get(Uri.parse(endpoint));
  if (resp.statusCode == 200) {
    // return Album.fromJson(jsonDecode(resp.body) as Map<String, dynamic>);
    final List body = json.decode(resp.body);
    return body.map((i) => AlbumData.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load Album :(');
  }
}
