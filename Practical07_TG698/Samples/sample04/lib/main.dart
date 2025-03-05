import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView Example')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index){
            return Container(
              margin: EdgeInsets.all(10),
              color: Colors.primaries[index%Colors.primaries.length],
              child: Center(
                child: Text('Item $index',style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
            );
          }),
        ),
      ),
    );
  }
}

