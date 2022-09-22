
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kleio_app/database/controller/slider_db_controller.dart';
import 'package:kleio_app/database/models/slider_model.dart';

class SliderModelGetxController extends GetxController {

  RxList<SliderModel> Slider = <SliderModel>[].obs;
  final SliderDbController _sliderDbController = SliderDbController();

  static SliderModelGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    readSliderModel();
    super.onInit();
  }

  @override
  Future<void> readSliderModel () async{
    // TODO: implement read
    // throw UnimplementedError();
    Slider.value = await _sliderDbController.read();
    // update();
  }

  @override
  Future<bool> createSliderModel (SliderModel slider) async{
    // TODO: implement create
    // throw UnimplementedError();
    int newRowId = await _sliderDbController.create(slider);
    if( newRowId != 0 ){
      slider.id = newRowId;
      Slider.add(slider);
    }
    return newRowId != 0;
  }


  @override
  Future<bool> deleteSliderModel (int id) async{
    // TODO: implement delete
    // throw UnimplementedError();
    bool deleted = await _sliderDbController.delete(id);
    if( deleted ){
      int index = Slider.indexWhere((element) => element.id == id);
      if( index != -1){
        Slider.removeAt(index);
      }
    }
    return deleted;
  }

  @override
  Future<bool> updateSliderModel (SliderModel slider) async{
    // TODO: implement update
    // throw UnimplementedError();
    bool updated = await _sliderDbController.update(slider);
    if( updated ){
      int index = Slider.indexWhere((element) => element.id == slider.id);
      if( index != -1){
        Slider[index] = slider;
      }
    }
    return updated;
  }
}