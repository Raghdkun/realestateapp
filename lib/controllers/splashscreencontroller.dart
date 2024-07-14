import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';

class SplashScreenController extends GetxController {
  splash() async {
    await Future.delayed(Duration(seconds: 4));
    Get.offAllNamed(AppRoute.language);
  }

  @override
  void onInit() {
    // splash();
    super.onInit();
  }
}
