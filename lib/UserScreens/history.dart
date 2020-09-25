import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Order History'),
        centerTitle: false,
      ),
      body: new Center(child: new Text(
        'history',
      style: new TextStyle(fontSize: 25.0),
       ),
      ),
    );
  }
}