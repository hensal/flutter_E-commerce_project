import 'package:flutter/material.dart';
import 'package:onlineproject/apis/categoryapi.dart';
import 'package:onlineproject/models/cmodel.dart';

class AllCategory extends StatefulWidget {
  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  List<Categories> _categories;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;

    Services.getCategory().then((categories) {
      setState(() {
        _categories = categories;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Categories'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _categories ? 0 : _categories.length,
          itemBuilder: (context, index) {
            Categories category = _categories[index];
            return ListTile(
              title: Text(category.name),
              
            );
          },
        ),
      ),
    );
  }
}
