import 'dart:async';
import 'package:onlineproject/models/pmodel.dart';
import 'package:http/http.dart' as http;

/*
Future<List<Products>> getProducts() async {
  String url = "https://onlinepasal.herokuapp.com/items/item";
  final response = await http.get(url);
  if(response.statusCode == 200) {
    final List<Products> products = productsFromJson(response.body);
        return products;
  }  
}
*/

class Services {
  static const String url = "https://onlinepasal.herokuapp.com/items/item";

  static Future<List<Products>> getProducts() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // print("name");
        final products = productsFromJson(response.body);
        // print(products[0].price);
        //print("https://onlinepasal.herokuapp.com+{$products[1].imageUrl}");
        //print(response.body);
        return products;
      } else {
        return List<Products>();
      }
    } catch (e) {
      print("the error is: $e");
      return List<Products>();
    }
  }
}
