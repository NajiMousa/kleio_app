
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kleio_app/database/controller/categories_db_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/categories_model.dart';

class CategoriesGetxController extends GetxController {

  RxList<CategoriesModel> CategorieModel = <CategoriesModel>[].obs;
  RxBool loading = false.obs;

  final CategoriesDbController _categoriesDbController = CategoriesDbController();

  static CategoriesGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    readCategoriesModel();
    super.onInit();
  }

  @override
  Future<void> readCategoriesModel () async{
    // TODO: implement read
    // throw UnimplementedError();
    loading.value = true;
    CategorieModel.value = await _categoriesDbController.read();
    loading.value = false;
    // update();
  }

  @override
  Future<bool> createCategoriesModel (CategoriesModel cat) async{
    // TODO: implement create
    // throw UnimplementedError();
    int newRowId = await _categoriesDbController.create(cat);
    if( newRowId != 0 ){
      cat.id = newRowId;
      CategorieModel.add(cat);
    }
    return newRowId != 0;
  }


  @override
  Future<bool> deleteCategoriesModel (int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    bool deleted = await _categoriesDbController.delete(id);
    if( deleted ){
      int index = CategorieModel.indexWhere((element) => element.id == id);
      if( index != -1){
        CategorieModel.removeAt(index);
      }
    }
    return deleted;
  }

  @override
  Future<bool> updateCategoriesModel (CategoriesModel cat) async{
    // TODO: implement update
    // throw UnimplementedError();
    bool updated = await _categoriesDbController.update(cat);
    if( updated ){
      int index = CategorieModel.indexWhere((element) => element.id == cat.id);
      if( index != -1){
        CategorieModel[index] = cat;
      }
    }
    return updated;
  }
}