import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('GestureDetector Example')),
        body: Center(
          child: GestureDetector(
            onTap: (){
              print('Container Tapped');
            },
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Tap me',
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

