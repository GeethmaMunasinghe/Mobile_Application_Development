import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'student.dart';

class DBHelper {
  static final DBHelper instance = DBHelper._internal();
  DBHelper._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'students.db');

    return openDatabase(path, version: 1, onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE students(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          age INTEGER,
          course TEXT
        )
      ''');
    });
  }

  Future<void> insertStudent(Student student) async {
    final db = await database;
    await db.insert('students', student.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Student>> getStudents() async {
    final db = await database;
    final result = await db.query('students');
    return result.map((e) => Student.fromMap(e)).toList();
  }

  Future<void> updateStudent(Student student) async {
    final db = await database;
    await db.update(
      'students',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  Future<void> deleteStudent(int id) async {
    final db = await database;
    await db.delete('students', where: 'id = ?', whereArgs: [id]);
  }
}
