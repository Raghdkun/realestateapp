
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/services/services.dart';



class SignOutcontroller extends GetxController{
  MyServices myServices = Get.find() ;

  logout(){
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login) ;

  }
}