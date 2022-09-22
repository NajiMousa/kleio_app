

import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import 'db_opertation.dart';

class UserDbController implements DbOperation <UserModel>{
  final Database _database = DbController().database;
  @override
  Future<int> create(object) async{
    // TODO: implement create
    // throw UnimplementedError();
    return await _database.insert('userTable', object.saveToMap());
  }


  @override
  Future<bool> delete(int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    int numberOfDeleteRows = await _database.delete('userTable',where: 'id=?',whereArgs: [id]);
    return numberOfDeleteRows > 0 ;
  }

  @override
  Future<List<UserModel>> read() async{
    // TODO: implement read
    // throw UnimplementedError();
    List<Map<String,dynamic>> rowsMap = await _database.query('userTable');
    return rowsMap.map((rowMap) => UserModel.readFromMap(rowMap)).toList();
  }

  @override
  Future <UserModel?> show(int id) async{
    // TODO: implement show
    // throw UnimplementedError();
    List<Map<String,dynamic>> rows = await _database.query('userTable',where: 'id=?',whereArgs: [id]);
    return rows.isNotEmpty ? UserModel.readFromMap(rows.first) : null ;
  }

  @override
  Future<bool> update(object) async{
    // TODO: implement update
    // throw UnimplementedError();
    int numberOfUpdateRows = await _database.update('userTable', object.saveToMap(),where: 'id=?',whereArgs: [object.id]);
    return numberOfUpdateRows > 0;
  }

}