import 'package:farmers_market/src/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';

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
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
      AppTextField(
        isIOS: Platform.isIOS,
        cupertinoIcon: CupertinoIcons.mail_solid,
        hintText: 'Email',
        materialIcon: Icons.email,
        textInputType: TextInputType.emailAddress,
      ),
      AppTextField(
        isIOS: Platform.isIOS,
        // todo: change later
        cupertinoIcon: CupertinoIcons.mail_solid,
        hintText: 'Password',
        materialIcon: Icons.lock,
        textInputType: TextInputType.text,
        obscureText: true,
      ),
    ]);
  }
}
