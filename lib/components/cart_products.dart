import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return new Text("d");
      },
    );
  }
}
