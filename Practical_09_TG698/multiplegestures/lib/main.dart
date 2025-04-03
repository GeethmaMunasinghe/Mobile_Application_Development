import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureExample(),
    );
  }
}

class GestureExample extends StatefulWidget {
  @override
  _GestureExampleState createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  String _gestureText = "Try tapping, swiping, or long-pressing";

  void _updateText(String newText) {
    setState(() {
      _gestureText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Tapped!');
            _updateText("Tapped!");
          },
          onDoubleTap: () {
            print("Double Tapped!");
            _updateText("Double Tapped!");
          },
          onLongPress: () {
            print("Long Pressed!");
            _updateText("Long Pressed!");
          },
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! > 0) {
              print("Swiped Right!");
              _updateText("Swiped Right!");
            } else {
              print("Swiped Left!");
              _updateText("Swiped Left!");
            }
          },
          child: Container(
            width: 250,
            height: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              _gestureText,
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
