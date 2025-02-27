import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
    appBar: AppBar(title: Text("RichText Example")),
     body: Center(
    child: RichText(
    text: TextSpan(
     style: TextStyle(fontSize: 24, color: Colors.black),
    children: <TextSpan>[
 TextSpan(text: "Bold Text", style: TextStyle(fontWeight: FontWeight.bold)),
 TextSpan(text: " Normal Text"),
 ],
 ),
 ),
 ),
 ),
 );
 }
}