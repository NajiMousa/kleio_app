
class BookModel {

  late int id ;
  late String bookName ;
  late String imageUrl ='images/bookCover.png';
  late String autherName ;
  late String description ;
  late String languageBook ;
  late String longTime ;
  late String tages ;
  int favorite = 0 ;


  BookModel();

  /// Read
  BookModel.readFromMap(Map<String,dynamic> rowMap){
    id = rowMap['id'];
    bookName = rowMap['bookName'];
    imageUrl = rowMap['imageUrl'];
    autherName = rowMap['autherName'];
    description = rowMap['description'];
    languageBook = rowMap['languageBook'];
    longTime = rowMap['longTime'];
    tages = rowMap['tages'];
    favorite = rowMap['favorite'];
  }

  ///Save

  Map<String,dynamic> saveToMap (){
    Map<String,dynamic> rowMap = <String,dynamic> {};
    rowMap['bookName'] = bookName;
    rowMap['imageUrl'] = imageUrl;
    rowMap['autherName'] = autherName;
    rowMap['description'] = description;
    rowMap['languageBook'] = languageBook;
    rowMap['longTime'] = longTime;
    rowMap['tages'] = tages;
    rowMap['favorite'] = favorite;

    return rowMap;
  }
}