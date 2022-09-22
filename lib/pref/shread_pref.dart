import 'package:shared_preferences/shared_preferences.dart';

enum prefKey {
  loggedIn , email , lang , password // متغير lang تم اضافته من اجل البروفايدر
}
class SharedPrefController{

  //Singleton Design Pattern

  static final  SharedPrefController _instance = SharedPrefController._internal();   // 02  // انشاء انستنس وحيد داخل الكلاس

  late SharedPreferences _sharedPreferences ;                                // انشاء برايفت انستنس من الشيرد رفيفرنس

  SharedPrefController._internal();                                          // لحذف الدالة البنائية الافتراضية  // 01
  factory SharedPrefController(){
    //return SharedPrefController._internal();
    return _instance ;
  }

  Future<void> initSharedPref() async{
    _sharedPreferences = await SharedPreferences.getInstance();             // وضعنا االاسنقرنس و الاويت لانو دالة القيت مستقبلية
  }

  Future<void> saveData({required String email , required String password}) async{                     // دالة لحفظ بيانات تسجيل الدخول
    await _sharedPreferences.setBool(prefKey.loggedIn.toString(), true);
    await _sharedPreferences.setString(prefKey.email.toString(), email);
    await _sharedPreferences.setString(prefKey.password.toString(), password);
  }

  bool get loggedIn => _sharedPreferences.getBool(prefKey.loggedIn.toString()) ?? false ;    // بدنا نرجع البيانات اللي حفظناها

  String get email => _sharedPreferences.getString(prefKey.email.toString()) ?? 'noEmail' ;

  Future<bool> clear()async{                                                   // طريقة 03 لعمل تسجيل خروج من خلال مسح الكي و الفاليو تبعته
    return await _sharedPreferences.clear();
  }

//   // دوال الل provider
//
  Future<void> setLanguage() async {
    await _sharedPreferences.setString(prefKey.lang.toString(), language== 'en'? 'ar': 'en');
  }
  String get language => _sharedPreferences.getString(prefKey.lang.toString()) ?? 'en';
}



// class Shape {
//   factory Shape(){
//     return Circle();                         // من خصائص هذا الدالة البنائية انها تسمح للاب بانشاء اوبجكت من ابنائه فيه
//   }
// }
//
// class Circle extends Shape {
//