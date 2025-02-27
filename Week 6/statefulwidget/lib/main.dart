import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
 _MyHomePageState createState()=>_MyHomePageState();
  }


class _MyHomePageState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("StateFul Widget Examples")),
      body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
      Text("Counter:\$counter"),
    ElevatedButton(
      onPressed: _incrementCounter,
      child: Text("Increment"),
    ),
    ],
    ),
    ),
    ),
    );
}
}