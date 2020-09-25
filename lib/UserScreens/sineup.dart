import 'package:flutter/material.dart';
import 'package:onlineproject/tools/app_tools.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController fullname = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController re_password = new TextEditingController();
  
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
     this.context = context;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text('Sign Up'),
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
              textHint: "Full Name",
              textIcon: Icons.person,
              controller: fullname),
              new SizedBox(
                height: 30.0,
              ),
              appTextField(
              isPassword: false,
              sidePadding: 18.0,
              textHint: "Phone Number",
              textIcon: Icons.phone,
              textType: TextInputType.number,
              controller: phonenumber),
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
                controller: password), //prevents from typing being both field same
                new SizedBox(
                height: 20.0,
                  ),
                appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Re-Password",
                textIcon: Icons.lock,
                controller: re_password),
            appButton(
                btnTxt: "Create Account",
                onBtnclicked: veryfyDetails,
                btnPadding: 20.0,
                btnColor: Theme.of(context).primaryColor),
           
          ],
        ),
      ),
    );
  }
  
  veryfyDetails() {
    if (fullname.text == "") {
      showSnackBar('Full name can not be empty', scaffoldKey);
      return;
    }
    if (phonenumber.text == "") {
      showSnackBar('Password cannot be empty', scaffoldKey);
      return;
    }

    if (email.text == "") {
      showSnackBar('Email can not be empty', scaffoldKey);
      return;
    }
    if (password.text == "") {
      showSnackBar('Password cannot be empty', scaffoldKey);
      return;
    }
     if (re_password.text == "") {
      showSnackBar('Password cannot be empty', scaffoldKey);
      return;
    }

  displayProgressDialog(context);
  
 }
}

