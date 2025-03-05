import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column with Rows')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(color: Colors.red, width: 80, height: 80),
                  Container(color: Colors.green, width: 80, height: 80),
                  Container(color: Colors.blue, width: 80, height: 80),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(color: Colors.orange, width: 80, height: 80),
                  Container(color: Colors.purple, width: 80, height: 80),
                  Container(color: Colors.teal, width: 80, height: 80),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


