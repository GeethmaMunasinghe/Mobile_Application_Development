import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState()=>_MyAppState();

}

class _MyAppState extends State<MyApp>{
  int _selectedIndex=0;
  static List<Widget> _widgetOptions=<Widget>[
    Text("Home Screen"),
    Text("Setting Screen"),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
}


