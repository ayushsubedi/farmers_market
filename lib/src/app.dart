import 'package:farmers_market/src/screens/login.dart';
import 'package:farmers_market/src/services/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: Login(),
        onGenerateRoute: Routes.cupertinoRoutes,
      );
    }
    // everything else besides IOS
    // will be material for now
    return MaterialApp(
      home: Login(),
      onGenerateRoute: Routes.materialRoutes,
    );
  }
}
