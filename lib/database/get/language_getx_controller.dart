import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kleio_app/pref/shread_pref.dart';

class LanguageGetxController extends GetxController {
  static LanguageGetxController get to => Get.find<LanguageGetxController>();
  RxString language = 'en'.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    language.value = SharedPrefController().language;
    super.onInit();
  }

  void changeLanguage() {
    language.value = language.value == 'en' ? 'ar' : 'en';
    SharedPrefController().setLanguage();
  }
}
