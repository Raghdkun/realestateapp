
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';

abstract class SuccessResetPasswordcc extends GetxController {
  login();
  goToLogIn();
  
}

class SuccessResetPasswordcImp extends SuccessResetPasswordcc{
  
  
  @override
  login() {
    
  }

  @override
  goToLogIn() {
    Get.offAllNamed(AppRoute.login);
  }

 
  }
  
  
