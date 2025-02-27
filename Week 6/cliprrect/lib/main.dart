import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ClipRRect Example")),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network('https://via.placeholder.com/150'),
          ),
        ),
      ),
    );
  }
}