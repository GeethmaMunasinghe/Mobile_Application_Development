import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Customize Animations'),
        ),
        body: CustomizeAnimations(),
      ),
    );
  }
}

class CustomizeAnimations extends StatefulWidget{
  _CustomizeAnimationsState createState()=>_CustomizeAnimationsState();
}

class _CustomizeAnimationsState extends State<CustomizeAnimations>
  with SingleTickerProviderStateMixin{
late AnimationController _controller;
late Animation<double> _animation;

void initState(){
  super.initState();

_controller=AnimationController(
  duration: const Duration(seconds: 2),
  vsync: this,
  );

_animation=Tween<double>(begin: 0.0,end: 1.0).animate(
  CurvedAnimation(
    parent: _controller, 
    curve: Curves.bounceIn,
  ),
);

_controller.repeat(reverse: true);
}

void dispose(){
  _controller.dispose();
  super.dispose();
}

Widget build (BuildContext context){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScaleTransition(
          scale: _animation,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.red,
            child: Center(
              child: Text(
                'Bounce',
                style: TextStyle(color: Colors.white,fontSize: 24.0),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){
            setState(() {
              if(_controller.isAnimating){
                _controller.stop();
              }else{
                _controller.repeat(reverse: true);
              }
            });
          },
          child: Text(_controller.isAnimating?'Stop':'Start'),
        ),
      ],
    ),
  );
}
}