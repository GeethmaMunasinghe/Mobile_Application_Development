import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Opacity Example")),
        body: Center(
          child: Opacity(
            opacity: 0.5,
            child: Text("Transparent Text"),
            ),
        ),
      ),
    );
  }
}