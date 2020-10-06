import 'package:flutter/material.dart';
import 'package:json_parse_test/model/photo.dart';
import 'package:json_parse_test/model/photo_service.dart';
import 'package:json_parse_test/ui/widgets/photo_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello Json"),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhoto(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotosList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}