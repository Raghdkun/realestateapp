
import 'package:get/get.dart';
import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/core/class/uploadimage.dart';



class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud()) ;
    Get.put(UploadImage()) ;

  }

}