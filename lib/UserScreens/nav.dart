import 'package:flutter/material.dart';
import 'package:onlineproject/UserScreens/home.dart';
import 'package:onlineproject/UserScreens/profile.dart';
import 'package:onlineproject/UserScreens/category.dart';
import 'package:onlineproject/UserScreens/cart.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    AllProducts(),
    AllCategory(),
    Profile()
  ];

 void _onItemTap(int index){
   setState(() {
     _selectedIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Pasal'),
         actions: <Widget>[             
         new IconButton(
           icon: new Icon(
           Icons.search
           ),
           onPressed: null),
         new IconButton(
           icon: new Icon(
           Icons.favorite,
           ),
           onPressed: null),
          new IconButton(
           icon: new Icon(
           Icons.shopping_cart,
           ),
           onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
           }
           ),
          ],
      ),
      body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      )
      
    );
  }
}