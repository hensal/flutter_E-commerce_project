import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:onlineproject/UserScreens/loginLogout.dart';
import 'package:onlineproject/UserScreens/aboutUs.dart';
import 'package:onlineproject/UserScreens/notifications.dart';
import 'package:onlineproject/UserScreens/delivery.dart';
import 'package:onlineproject/UserScreens/history.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("HENSAL KAILASH"),
            accountEmail: new Text("kailashneupane1498@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Icon(Icons.person),
            ),
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.notifications,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: new Text("Order Notifications"),
            onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new Notifications()));
              },
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.history,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: new Text("My Orders"),
            onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new History()));
              },
          ),
          new Divider(),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.home,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: new Text("Delivery Address"),
            onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new Delivery()));
              },
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.person,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: new Text("Profile settings"),
             onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new LoginPage()));
              },
          ),
          new Divider(),
          new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                Icons.help,
                color: Colors.white,
                size: 20.0,
                ),
              ),
              title: new Text("About Us"),
               onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new AboutUs()));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 20.0,
                ),
              ),
              title: new Text("Login"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new LoginPage()));
              },
            )
        ],
      ),
     ));
    }
   }
