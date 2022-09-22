
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:sqflite/sqflite.dart';
import '../db_controller.dart';
import 'db_opertation.dart';

class CategoriesDbController implements DbOperation <CategoriesModel>{
  final Database _database = DbController().database;
  @override
  Future<int> create(object) async{
    // TODO: implement create
    // throw UnimplementedError();
    return await _database.insert('categoriesTable', object.saveToMap());
  }


  @override
  Future<bool> delete(int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    int numberOfDeleteRows = await _database.delete('categoriesTable',where: 'id=?',whereArgs: [id]);
    return numberOfDeleteRows > 0;
  }

  @override
  Future<List<CategoriesModel>> read() async{
    // TODO: implement read
    // throw UnimplementedError();
    List<Map<String,dynamic>> rowsMap = await _database.query('categoriesTable');
    return rowsMap.map((rowMap) => CategoriesModel.readFromMap(rowMap)).toList();
  }

  @override
  Future <CategoriesModel?> show(int id) async{
    // TODO: implement show
    // throw UnimplementedError();
    List<Map<String,dynamic>> rows = await _database.query('categoriesTable',where: 'id=?',whereArgs: [id]);
    return rows.isNotEmpty ? CategoriesModel.readFromMap(rows.first) : null ;
  }

  @override
  Future<bool> update(object) async{
    // TODO: implement update
    // throw UnimplementedError();
    int numberOfUpdateRows = await _database.update('categoriesTable', object.saveToMap(),where: 'id=?',whereArgs: [object.id]);
    return numberOfUpdateRows > 0;
  }

}