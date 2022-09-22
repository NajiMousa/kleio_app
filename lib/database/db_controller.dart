import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbController {
  /// Singleton

  static final DbController _instance = DbController._internal();
  late Database _database;

  DbController._internal();

  factory DbController() {
    return _instance;
  }

  /// Get dataBase Value

  Database get database => _database;


  Future<void> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_db.sql');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async{
        await db.execute('CREATE TABLE bookTable ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'bookName TEXT NOT NULL,'
            'imageUrl TEXT NOT NULL,'
            'autherName TEXT NOT NULL,'
            'description TEXT NOT NULL,'
            'languageBook TEXT NOT NULL,'
            'longTime TEXT NOT NULL,'
            'favorite INTEGER NOT NULL,'
            'tages TEXT NOT NULL)'
            );

        await db.execute('CREATE TABLE categoriesTable ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'imageCategories TEXT NOT NULL,'
            'categorieName TEXT NOT NULL,'
            'numberBook TEXT NOT NULL)'
        );

        await db.execute('CREATE TABLE sliderTable ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'sliderName TEXT NOT NULL,'
            'imageUrl TEXT NOT NULL)'
        );

        await db.execute('CREATE TABLE userTable ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'email TEXT NOT NULL,'
            'password TEXT NOT NULL)'
        );
      },
    );
  }
}
