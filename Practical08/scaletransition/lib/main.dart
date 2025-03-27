import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animation Example'),
        ),
          body: ScaleAnimation(),
        ),
    );
  }
}

class ScaleAnimation extends StatefulWidget{
  _ScaleAnimationState createState()=>_ScaleAnimationState();

}

class _ScaleAnimationState extends State<ScaleAnimation>
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
      curve: Curves.easeInOut,
    ),
  );

  _controller.forward();
}

void dispose(){
  _controller.dispose();
  super.dispose();
}

Widget build(BuildContext context){
  return Center(
    child: ScaleTransition(
      scale: _animation,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
        child: Center(
          child: Text(
            'Scale',
            style: TextStyle(color: Colors.white,fontSize: 24.0),
          ),
        ),
      ),
    ),
  );
}
}