import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:onlineproject/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: new Text("Cart"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
            ), 
              onPressed: () {}
              )
        ],
      ),
      body: new CartProducts(),
      
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: new ListTile(
                title: new Text("Total: "),
              )
              ),
              Expanded(
                child: new MaterialButton(
                  onPressed: () {},
                  child: new Text("Checkout",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  color: Colors.green,
                  )
                )
          ],
        ),
      ),
    );
  }
}