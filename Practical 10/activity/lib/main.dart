import 'package:flutter/material.dart';
import 'student_list.dart';

void main() {
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Manager',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const StudentListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
