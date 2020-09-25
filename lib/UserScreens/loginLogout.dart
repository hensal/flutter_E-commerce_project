//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onlineproject/UserScreens/sineup.dart';
import 'package:onlineproject/tools/app_tools.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;
  String errorText;
  bool validate = false;
  bool circular = false;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text('Login'),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Email Address",
                textIcon: Icons.email,
                controller: email),
            new SizedBox(
              height: 20.0,
            ),
            appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Password",
                textIcon: Icons.lock,
                controller:
                    password), //prevents from typing being both field same
            appButton(
                btnTxt: "Login",
                onBtnclicked: veryfyLoggin,
                
                btnPadding: 20.0,
                btnColor: Theme.of(context).primaryColor),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new SignUP()));
              },
              child: new Text(
                'Not Registerd? Sign Up Here',
                style: new TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  veryfyLoggin() {
    if (email.text == "") {
      showSnackBar('Email can not be empty', scaffoldKey);
      return;
    }
    if (password.text == "") {
      showSnackBar('Password cannot be empty', scaffoldKey);
      return;
    }
    displayProgressDialog(context);
  }
}
