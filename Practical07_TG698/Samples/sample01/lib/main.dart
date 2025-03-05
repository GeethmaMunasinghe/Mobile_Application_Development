import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
  return MaterialApp(
 home: Scaffold(
 appBar: AppBar(title: Text('Column and Row Layout')),
 body: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Container(width: 50, height: 50, color: Colors.red),                                 
 Container(width: 50, height: 50, color: Colors.green),
 Container(width: 50, height: 50, color: Colors.blue),
 ],
 ),
 SizedBox(height: 20),
 Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
  

 Text('Row with Text Widgets', style: TextStyle(fontSize: 20)),
 ],
 ),
 ],
 ),
 ),
 );
 }
}