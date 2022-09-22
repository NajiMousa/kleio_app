

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kleio_app/database/controller/book_db_controller.dart';
import 'package:kleio_app/database/controller/user_db_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/user_model.dart';

class UserModelGetxController extends GetxController {

  RxList<UserModel> UsersModel = <UserModel>[].obs;
  RxBool loading = false.obs;
  final UserDbController _userDbController = UserDbController();

  static UserModelGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    readUserMode();
    super.onInit();
  }

  @override
  Future<void> readUserMode () async{
    // TODO: implement read
    // throw UnimplementedError();
    print('naji');
    loading.value = true;
    UsersModel.value = await _userDbController.read();
    loading.value = false;
    // update();
  }

  @override
  Future<bool> createUserMode (UserModel user) async{
    // TODO: implement create
    // throw UnimplementedError();
    int newRowId = await _userDbController.create(user);
    if( newRowId != 0 ){
      user.id = newRowId;
      UsersModel.add(user);
    }
    return newRowId != 0;
  }


  @override
  Future<bool> deleteUserModel (int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    bool deleted = await _userDbController.delete(id);
    if( deleted ){
      int index = UsersModel.indexWhere((element) => element.id == id);
      if( index != -1){
        UsersModel.removeAt(index);
      }
    }
    return deleted;
  }

  @override
  Future<bool> updateUserMode (UserModel user) async{
    // TODO: implement update
    // throw UnimplementedError();
    bool updated = await _userDbController.update(user);
    if( updated ){
      int index = UsersModel.indexWhere((element) => element.id == user.id);
      if( index != -1){
        UsersModel[index] = user;
      }
    }
    return updated;
  }
}