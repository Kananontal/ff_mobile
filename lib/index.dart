import 'dart:ui';

import 'package:ff_mobile/config/constant.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            Image.asset(
              "assets/images/KMUTNB.png",
              width: size.width * 0.15,
              height: size.height * 0.15,
            ),
            Text(
              "Welcome to KMUTNB",
              style: TextStyle(
                fontSize: 32,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1629757107799-d350c82e1663?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80'),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: sFont,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('LOGIN'),
              onPressed: () {
                print("LOGIN!!!");
                Navigator.pushNamed(context, 'login');
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: sFont,
                  ),
                  primary: sColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('Register'),
              onPressed: () {
                print("Regis!!!!");
                Navigator.pushNamed(context, 'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}