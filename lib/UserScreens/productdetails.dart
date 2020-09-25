import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final int productId;
  final String productImage;
  final String productName;
  final String productPrice;
  final String productDescription;
  ProductDetails(
      {this.productId, this.productImage, this.productName, this.productPrice,this.productDescription});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Product Details"), //Text(widget.productId.toString())
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            //  margin: const EdgeInsets.only(left: 20.0,right: 20),
            height: 300.0,
            child: GridTile(
              child: new ClipRRect(
                  child: Image.network("https://onlinepasal.herokuapp.com" +
                      widget.productImage)),
              footer: new Container(
                color: Colors.white,
                child: new ListTile(
                  leading: new Text(
                    widget.productName,
                    //  textAlign: TextAlign.right,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          widget.productPrice,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.redAccent,
                            //decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Quantity",
                      style: TextStyle(
                         fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                      ),
                      ),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  elevation: 0.2,
                  child: new Text("Add to cart"),
                  padding: new EdgeInsets.all(0.0),
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {}),
            ],
          ),
          new ListTile(
            title: new Text(widget.productDescription),
          )
        ],
      ),
    );
  }
}
