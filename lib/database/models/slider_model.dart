
class SliderModel {

  late int id ;
  late String sliderName;
  late String imageUrl;

  SliderModel();

  /// Read
  SliderModel.readFromMap(Map<String,dynamic> rowMap){
    id = rowMap['id'];
    sliderName = rowMap['sliderName'];
    imageUrl = rowMap['imageUrl'];
  }

  ///Save

  Map<String,dynamic> saveToMap (){
    Map<String,dynamic> rowMap = <String,dynamic> {};
    rowMap['sliderName'] = sliderName;
    rowMap['imageUrl'] = imageUrl;

    return rowMap;
  }
}