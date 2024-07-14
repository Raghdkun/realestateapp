import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/services/services.dart';

class ExplorePageController extends GetxController {
  MyServices myServices = Get.find();

  goTohome() {
    myServices.sharedPreferences.setString("step", "2");
    Get.offAllNamed(AppRoute.home);
  }
}
