import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatefulWidget {
 @override
 _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
 int _selectedIndex = 0;
 static List<Widget> _widgetOptions = <Widget>[
 Text('Home Screen'),
 Text('Settings Screen'),
 ];
 void _onItemTapped(int index) {
 setState(() {
 _selectedIndex = index;
 });
 }
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
  appBar: AppBar(title: Text("Bottom Navigation Example")),
 body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
 bottomNavigationBar: BottomNavigationBar(
 items: const <BottomNavigationBarItem>[BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
 BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
 ],
 currentIndex: _selectedIndex,
 onTap: _onItemTapped,
 ),
 ),
 );
 }
}