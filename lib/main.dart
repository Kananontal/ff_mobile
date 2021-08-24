import 'package:ff_mobile/index.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kmutnb',
      theme: ThemeData.dark(),
      home: Index(),
      );
  }
}