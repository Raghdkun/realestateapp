
import 'package:get/get.dart';
import 'package:realestateapp/core/class/statusrequest.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/handlingdatacontroller.dart';
import 'package:realestateapp/data/remote/customerauth/forgetpassword/verifycodeforgetpassword.dart';



abstract class VerifyCodecController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllercImp extends VerifyCodecController {
  String? email;

  VerifyCodeForgetPasswordcData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordcData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postData(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPasswordc , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}