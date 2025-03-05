import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expanded & Flexible')),
        body: Row(
          children: [
            Expanded(
              child: Container(height: 100,color: Colors.red),
            ),
            Expanded(
              child: Container(height: 100,color: Colors.green,)
              ),
            Expanded(
              flex: 2,
              child: Container(height: 100,color: Colors.blue),
            ),
          ],
        ),
      ),
      
    );
  }
}
