import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:json_parse_test/model/photo.dart';

Future<List<Photo>> fetchPhoto() async {
  final response =
      await http.Client().get('https://jsonplaceholder.typicode.com/photos');
  return compute(parsePhoto, response.body);
}

List<Photo> parsePhoto(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}
