import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Draggable Container')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.5),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 50),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  targetColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  color: targetColor,
                  alignment: Alignment.center,
                  child: Text('Drop Here', style: TextStyle(color: Colors.white, fontSize: 16)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
