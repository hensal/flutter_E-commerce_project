import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UserScreens/nav.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(),
      title: 'Online Pasal',
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}