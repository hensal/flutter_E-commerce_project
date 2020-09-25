import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:onlineproject/models/cmodel.dart';

/*
 Future<List<Categories>> fetchCategories() async {
  String url = "https://onlinepasal.herokuapp.com/items/category";
  final response = await http.get(url);
  return categoriesFromJson(response.body);
}
*/

class Services {
  static const String url = "https://onlinepasal.herokuapp.com/items/category";

  static Future<List<Categories>> getCategory() async {
    try {
      final response = await http.get(url);  
      if (response.statusCode == 200) {
        final categories = categoriesFromJson(response.body);
        //print(categories);
        return categories;
      } else {
        return List<Categories>();
      }
    } catch (e) {
      //print("Error is $e");
      return List<Categories>();
    }
  }
}