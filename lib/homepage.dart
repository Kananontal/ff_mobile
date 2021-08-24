import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('CED'),
      ),
      body: Container(
        color: Colors.green[200],
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        // width: 200,
        // height: 100,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 20,
              child: Text(
                'Data 1',
                style: TextStyle(
              fontSize: 48,
              ),
            ),
          ),
            Positioned(
              bottom:5,
              right: 10,
              child: Text(
                'Data 2',
                style: TextStyle(
              fontSize: 48,
              ),
            ),
          ),
            Positioned(
             bottom: 20,
              right: 20,
              child: Text(
                'Data 3',
                style: TextStyle(
              fontSize: 48,
              ),
            ),
          ),
          ],
          ),
        )

            
      ),
      );
      
  
  }
}