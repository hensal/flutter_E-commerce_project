import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onlineproject/models/pmodel.dart';

class ABC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Hero(
              tag: Products, 
               child: Material(
                 child: InkWell(onTap: (){},
                 child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text('name of product', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                    ),
                    title: Text("prodc price", style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                      ),  
                   ),
                   ),
                  child: Row(
                     children: <Widget>[
                    CircleAvatar(
                     // backgroundImage: NetworkImage(),
                    ),
                    ],
                  )
                ),
              )
          )),
        );
      },
    );
  }
}
