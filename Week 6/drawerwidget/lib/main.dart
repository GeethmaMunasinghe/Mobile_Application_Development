import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer Example")),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu",style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title: Text("Home"),
                onTap: (){},
              ),
              ListTile(
                title: Text("Settings"),
                onTap: (){},
              ),
            ],
          ),
        ),
        body: Center(child: Text("Drawer Example")),
      ),
    );
  }
}