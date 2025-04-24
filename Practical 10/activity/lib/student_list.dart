import 'package:flutter/material.dart';
import 'student.dart';
import 'db_helper.dart';
import 'student_form.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({Key? key}) : super(key: key);

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  Future<void> _loadStudents() async {
    final data = await DBHelper.instance.getStudents();
    setState(() => students = data);
  }

  void _addStudent() {
    showDialog(
      context: context,
      builder: (_) => StudentForm(
        onSubmit: (student) async {
          await DBHelper.instance.insertStudent(student);
          Navigator.pop(context);
          _loadStudents();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Student Added')));
        },
      ),
    );
  }

  void _editStudent(Student student) {
    showDialog(
      context: context,
      builder: (_) => StudentForm(
        student: student,
        onSubmit: (updatedStudent) async {
          await DBHelper.instance.updateStudent(updatedStudent);
          Navigator.pop(context);
          _loadStudents();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Student Updated')));
        },
      ),
    );
  }

  void _deleteStudent(int id) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Confirm Delete'),
        content: const Text('Are you sure you want to delete this student?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              await DBHelper.instance.deleteStudent(id);
              Navigator.pop(context);
              _loadStudents();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Student Deleted')));
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Manager')),
      body: students.isEmpty
          ? const Center(child: Text('No students yet'))
          : ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final s = students[index];
                return ListTile(
                  title: Text(s.name),
                  subtitle: Text('Age: ${s.age}, Course: ${s.course}'),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    IconButton(icon: const Icon(Icons.edit), onPressed: () => _editStudent(s)),
                    IconButton(icon: const Icon(Icons.delete), onPressed: () => _deleteStudent(s.id!)),
                  ]),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addStudent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
