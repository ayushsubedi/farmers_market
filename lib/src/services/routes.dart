import 'package:farmers_market/src/screens/landing.dart';
import 'package:farmers_market/src/screens/login.dart';
import 'package:farmers_market/src/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Landing());

      case "/signup":
        return MaterialPageRoute(builder: (context) => Signup());

      case "/login":
        return MaterialPageRoute(builder: (context) => Login());

      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }
}
