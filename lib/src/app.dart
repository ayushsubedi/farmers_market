import 'package:farmers_market/src/screens/login.dart';
import 'package:farmers_market/src/services/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      onGenerateRoute: Routes.materialRoutes,
    );
  }
}
