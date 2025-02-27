import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Exercise")),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20), // Padding of 20 pixels
            decoration: BoxDecoration(
              color: Colors.red, // Red background color
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
            child: Center(
              child: Text(
                "Hello!",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center, // Center-align text
              ),
            ),
          ),
        ),
      ),
    );
  }
}






