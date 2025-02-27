import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("RotatedBox Example")),
        body: Center(
          child: RotatedBox(
            quarterTurns: 1,
            child: Text("Rotated Text"),
            ),
        ),
      ), 
      
    );
  }
}

