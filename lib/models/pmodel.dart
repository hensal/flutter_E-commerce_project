// To parse this JSON data, do
//
//     final Products = ProductsFromJson(jsonString);

import 'dart:convert';

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
List<Products> productsFromJson(String string) {
  final products = List<Products>.from(json.decode(string)["data"].map((x) => Products.fromJson(x))).toList();
  return products;
}
            

class Products {
  Products({
    this.id,
    this.name,
    this.price,
    this.imageUrl, 
    this.description,
  });

  int id;
  String name;
  String price;
  String imageUrl;
  String description;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        name: json["name"],
        price: json["unit_price"],
        description: json["description"],
        imageUrl: json["thumbnail"]
        );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "unit_price": price,
        "description": description,
        "thumbnail": imageUrl
      };
}
