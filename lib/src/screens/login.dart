import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * .2,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/top_bg.png'),
                fit: BoxFit.fill)),
      ),
      Container(
          height: 200,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/logo.png'))))
    ]);
  }
}
