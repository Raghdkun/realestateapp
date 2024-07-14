import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/class/statusrequest.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/handlingdatacontroller.dart';
import 'package:realestateapp/data/remote/customerauth/forgetpassword/resetpassword.dart';
import 'package:realestateapp/views/widgets/buttonsheet.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

abstract class ResetPasswordcController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllercImp extends ResetPasswordcController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  ResetPasswordcData resetPasswordData = ResetPasswordcData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController password;
  late TextEditingController repassword;

  bool isShowPassword = true;
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  String? email;

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "warning", middleText: "Password Not Match");
    }
    final isValided = formstate.currentState?.validate() ?? true;
    if (isValided) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.loginc);
          ModernButtonSheet(
            contentName: "Your account has successfully verified",
            color: AppColor.primaryColor,
            buttonName: "Continue",
          ).show();
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      // print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
