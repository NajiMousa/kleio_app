

class CategoriesModel {

  late int id ;
  late String imageCategories;
  late String categorieName ;
  late String numberBook ;

  CategoriesModel();

  /// Read
  CategoriesModel.readFromMap(Map<String,dynamic> rowMap){
    id = rowMap['id'];
    imageCategories = rowMap['imageCategories'];
    categorieName = rowMap['categorieName'];
    numberBook = rowMap['numberBook'];
  }

  ///Save

  Map<String,dynamic> saveToMap (){
    Map<String,dynamic> rowMap = <String,dynamic> {};
    rowMap['imageCategories'] = imageCategories;
    rowMap['categorieName'] = categorieName;
    rowMap['numberBook'] = numberBook;

    return rowMap;
  }
}