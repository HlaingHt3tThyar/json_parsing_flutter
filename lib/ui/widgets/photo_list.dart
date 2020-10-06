import 'package:flutter/material.dart';
import 'package:json_parse_test/model/photo.dart';

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          child:Image.network(photos[index].url)
        );
      },
    );
  }
}
