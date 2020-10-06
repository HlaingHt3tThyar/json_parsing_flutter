import 'package:flutter/material.dart';
import 'package:json_parse_test/ui/screens/home_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/' :(_)=> Home(),
      }
    );
  }
}