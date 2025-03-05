import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Widget')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 200,height: 200,color: Colors.blue),
              Positioned(bottom: 10,right: 10,child: Icon(Icons.favorite,size: 50,color:Colors.yellow)),
               Positioned(top: 10, left: 10, child: Icon(Icons.favorite, size: 50, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}

