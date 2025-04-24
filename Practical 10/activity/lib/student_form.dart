import 'package:flutter/material.dart';
import 'student.dart';

class StudentForm extends StatefulWidget {
  final Student? student;
  final Function(Student) onSubmit;

  const StudentForm({Key? key, this.student, required this.onSubmit}) : super(key: key);

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController ageController;
  late TextEditingController courseController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.student?.name ?? '');
    ageController = TextEditingController(text: widget.student?.age.toString() ?? '');
    courseController = TextEditingController(text: widget.student?.course ?? '');
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    courseController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final newStudent = Student(
        id: widget.student?.id,
        name: nameController.text,
        age: int.parse(ageController.text),
        course: courseController.text,
      );
      widget.onSubmit(newStudent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.student == null ? 'Add Student' : 'Edit Student'),
      content: Form(
        key: _formKey,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Enter name' : null,
          ),
          TextFormField(
            controller: ageController,
            decoration: const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            validator: (value) => value!.isEmpty ? 'Enter age' : null,
          ),
          TextFormField(
            controller: courseController,
            decoration: const InputDecoration(labelText: 'Course'),
            validator: (value) => value!.isEmpty ? 'Enter course' : null,
          ),
        ]),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        ElevatedButton(onPressed: _submit, child: const Text('Save')),
      ],
    );
  }
}
