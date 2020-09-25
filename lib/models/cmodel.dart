// To parse this JSON data, do
//
//     final categories = categoriesFromJson(jsonString);

import 'dart:convert';

String categoriesToJson(List<Categories> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

List<Categories> categoriesFromJson(String string) {
  final categories = List<Categories>.from(json.decode(string)["data"].map((x) => Categories.fromJson(x))).toList();
  return categories;
}
               
class Categories {
    Categories({
        this.id,
        this.name,
      });

    int id;
    String name;
    
    factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"] ?? 0,
        name: json["name"] ?? "ds",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        
    };
}