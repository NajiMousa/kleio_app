

import 'package:kleio_app/database/models/slider_model.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import 'db_opertation.dart';

class SliderDbController implements DbOperation <SliderModel>{
  final Database _database = DbController().database;
  @override
  Future<int> create(object) async{
    // TODO: implement create
    // throw UnimplementedError();
    return await _database.insert('sliderTable', object.saveToMap());
  }


  @override
  Future<bool> delete(int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    int numberOfDeleteRows = await _database.delete('sliderTable',where: 'id=?',whereArgs: [id]);
    return numberOfDeleteRows > 0 ;
  }

  @override
  Future<List<SliderModel>> read() async{
    // TODO: implement read
    // throw UnimplementedError();
    List<Map<String,dynamic>> rowsMap = await _database.query('sliderTable');
    return rowsMap.map((rowMap) => SliderModel.readFromMap(rowMap)).toList();
  }

  @override
  Future <SliderModel?> show(int id) async{
    // TODO: implement show
    // throw UnimplementedError();
    List<Map<String,dynamic>> rows = await _database.query('sliderTable',where: 'id=?',whereArgs: [id]);
    return rows.isNotEmpty ? SliderModel.readFromMap(rows.first) : null ;
  }

  @override
  Future<bool> update(object) async{
    // TODO: implement update
    // throw UnimplementedError();
    int numberOfUpdateRows = await _database.update('sliderTable', object.saveToMap(),where: 'id=?',whereArgs: [object.id]);
    return numberOfUpdateRows > 0;
  }

}