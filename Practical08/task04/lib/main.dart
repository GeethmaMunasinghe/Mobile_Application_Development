import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Combine Animations'),
        ),
        body: CombineAnimations(),
      ),
    );
  }
}

class CombineAnimations extends StatefulWidget{
  _CombineAnimationsState createState()=>_CombineAnimationsState();
}

class _CombineAnimationsState extends State<CombineAnimations>
  with SingleTickerProviderStateMixin{
late AnimationController _controller;
late Animation<double> _fadeAnimation;
late Animation<double> _scaleAnimation;

void initState(){
  super.initState();

  _controller=AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );

  _fadeAnimation=Tween<double>(begin: 0.0,end: 1.0).animate(_controller);
  _scaleAnimation=Tween<double>(begin: 0.0,end: 1.0).animate(
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
    child: FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.purple,
          child: Center(
            child: Text(
              'Combine',
              style: TextStyle(color: Colors.white,fontSize: 24.0),
            ),
          ),
        ),
      ),
    ),
  );
}
}
