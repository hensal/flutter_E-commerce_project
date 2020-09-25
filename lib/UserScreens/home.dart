import 'package:flutter/material.dart';
import 'package:onlineproject/apis/productapi.dart';
import 'package:onlineproject/models/pmodel.dart';
import 'package:onlineproject/UserScreens/productdetails.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List<Products> _products;
  bool _loading;
  

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getProducts().then((products) {
      setState(() {
        _products = products;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Products'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 3.0, mainAxisSpacing: 3.0),
          scrollDirection: Axis.vertical,
          itemCount: null == _products ? 0 : _products.length,
          itemBuilder: (BuildContext context, index) {
            Products product = _products[index];
            return Card(
              child: Hero(
                  tag: new Text("hero 1"),
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (context) => new ProductDetails(
                                productId: product.id,
                                productImage: product.imageUrl,
                                productName: product.name,
                                productPrice: product.price,
                                productDescription: product.description,
                                ))),
                      child: GridTile(
                        header: new Text(
                          product.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        footer: new Text(product.price),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(30.0),
                          child: Image.network(
                              "https://onlinepasal.herokuapp.com"+product.imageUrl),
                              
                        ),
                      ),
                    ),
                  )),
            );
          }),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text("0"),
          )
        ],
      ),
    );
  }
}
