
class UserModel {

  late int id ;
  late String email ;
  late String password ;

  UserModel();

  /// Read
  UserModel.readFromMap(Map<String,dynamic> rowMap){
    id = rowMap['id'];
    email = rowMap['email'];
    password = rowMap['password'];
  }

  ///Save

  Map<String,dynamic> saveToMap (){
    Map<String,dynamic> rowMap = <String,dynamic> {};
    rowMap['email'] = email;

    return rowMap;
  }
}