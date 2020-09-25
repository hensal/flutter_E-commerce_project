import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('About Us'),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          'About us',
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
