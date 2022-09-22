

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kleio_app/database/controller/book_db_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';

class BookModelGetxController extends GetxController {

  RxList<BookModel> BooksModel = <BookModel>[].obs;
  RxBool loading = false.obs;
  final BookDbController _bookDbController = BookDbController();

  static BookModelGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    readBookMode();
    super.onInit();
  }

  @override
  Future<void> readBookMode () async{
    // TODO: implement read
    // throw UnimplementedError();
    print('naji');
    loading.value = true;
    BooksModel.value = await _bookDbController.read();
    loading.value = false;
    // update();
  }

  @override
  Future<bool> createBookMode (BookModel book) async{
    // TODO: implement create
    // throw UnimplementedError();
    int newRowId = await _bookDbController.create(book);
    if( newRowId != 0 ){
      book.id = newRowId;
      BooksModel.add(book);
    }
    return newRowId != 0;
  }


  @override
  Future<bool> deleteBookModel (int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    bool deleted = await _bookDbController.delete(id);
    if( deleted ){
      int index = BooksModel.indexWhere((element) => element.id == id);
      if( index != -1){
        BooksModel.removeAt(index);
      }
    }
    return deleted;
  }

  @override
  Future<bool> updateBookMode (BookModel book) async{
    // TODO: implement update
    // throw UnimplementedError();
    bool updated = await _bookDbController.update(book);
    if( updated ){
      int index = BooksModel.indexWhere((element) => element.id == book.id);
      if( index != -1){
        BooksModel[index] = book;
      }
    }
    return updated;
  }
}