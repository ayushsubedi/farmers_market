import 'package:farmers_market/src/screens/base.dart';
import 'package:farmers_market/src/styles/colors.dart';
import 'package:farmers_market/src/styles/textfields.dart';
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
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.png')))),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: email(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal(),
            vertical: TextFieldStyles.textBoxVertical()),
        child: password(),
      ),
    ]);
  }

  Widget email() {
    if (Platform.isIOS) {
      return CupertinoTextField(
          padding: EdgeInsets.all(12.0),
          placeholder: 'Email',
          textAlign: TextAlign.center,
          placeholderStyle: TextFieldStyles.placeholder(),
          style: TextFieldStyles.text(),
          cursorColor: TextFieldStyles.cursorColor(),
          prefix: TextFieldStyles.iconPrefix(CupertinoIcons.mail_solid),
          decoration: TextFieldStyles.cupertinoDecoration());
    }
    return TextField();
  }

  Widget password() {
    if (Platform.isIOS) {
      return CupertinoTextField();
    }
    return TextField();
  }
}
