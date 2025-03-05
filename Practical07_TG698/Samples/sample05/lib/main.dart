import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView(
          children: List.generate(10,(index){
            return ListTile(
              leading:Icon(Icons.label),
              title: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}

