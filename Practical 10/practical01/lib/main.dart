import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dog {
  final int? id;
  final String name;
  final int age;

  Dog({this.id, required this.name, required this.age});

  // Convert a Dog into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Extract a Dog object from a Map.
  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      id: map['id'],
      name: map['name'],
      age: map['age'],
    );
  }
}

Future<Database> initializeDB() async {
  String path = join(await getDatabasesPath(), 'dogs_database.db');
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER)',
      );
    },
  );
}

Future<void> insertDog(Dog dog) async {
  final db = await initializeDB();
  await db.insert(
    'dogs',
    dog.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Dog>> retrieveDogs() async {
  final db = await initializeDB();
  final List<Map<String, dynamic>> queryResult = await db.query('dogs');
  return queryResult.map((e) => Dog.fromMap(e)).toList();
}

Future<void> updateDog(Dog dog) async {
  final db = await initializeDB();
  await db.update(
    'dogs',
    dog.toMap(),
    where: 'id = ?',
    whereArgs: [dog.id],
  );
}

Future<void> deleteDog(int id) async {
  final db = await initializeDB();
  await db.delete(
    'dogs',
    where: 'id = ?',
    whereArgs: [id],
  );
}
