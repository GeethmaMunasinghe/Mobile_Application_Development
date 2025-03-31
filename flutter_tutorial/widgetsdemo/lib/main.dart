import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());//Create a object
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: Text("My First App"),
      );
  }
}