

import 'package:kleio_app/database/models/book_model.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import 'db_opertation.dart';

class BookDbController implements DbOperation <BookModel>{
  final Database _database = DbController().database;
  @override
  Future<int> create(object) async{
    // TODO: implement create
    // throw UnimplementedError();
    return await _database.insert('bookTable', object.saveToMap());
  }


  @override
  Future<bool> delete(int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    int numberOfDeleteRows = await _database.delete('bookTable',where: 'id=?',whereArgs: [id]);
    return numberOfDeleteRows > 0 ;
  }

  @override
  Future<List<BookModel>> read() async{
    // TODO: implement read
    // throw UnimplementedError();
    List<Map<String,dynamic>> rowsMap = await _database.query('bookTable');
    return rowsMap.map((rowMap) => BookModel.readFromMap(rowMap)).toList();
  }

  @override
  Future <BookModel?> show(int id) async{
    // TODO: implement show
    // throw UnimplementedError();
    List<Map<String,dynamic>> rows = await _database.query('bookTable',where: 'id=?',whereArgs: [id]);
    return rows.isNotEmpty ? BookModel.readFromMap(rows.first) : null ;
  }

  @override
  Future<bool> update(object) async{
    // TODO: implement update
    // throw UnimplementedError();
    int numberOfUpdateRows = await _database.update('bookTable', object.saveToMap(),where: 'id=?',whereArgs: [object.id]);
    return numberOfUpdateRows > 0;
  }

}