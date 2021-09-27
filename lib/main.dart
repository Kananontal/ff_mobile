import 'package:ff_mobile/config/constant.dart';
import 'package:ff_mobile/index.dart';
import 'package:ff_mobile/screen/dashboard.dart';
import 'package:ff_mobile/screen/login.dart';
import 'package:ff_mobile/screen/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kmutnb',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'dashboard': (context) => Dashboard(),
      },
      home: Index(),
    );
  }
}
