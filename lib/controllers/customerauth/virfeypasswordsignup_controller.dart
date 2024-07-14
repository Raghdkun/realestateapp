import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/class/statusrequest.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/handlingdatacontroller.dart';
import 'package:realestateapp/data/remote/auth/verfiycodesignup.dart';
import 'package:realestateapp/data/remote/customerauth/verfiycodesignup.dart';
import 'package:realestateapp/views/widgets/buttonsheet.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

abstract class VerfiyPasswordSignUpcController extends GetxController {
  checkcode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerfiyPasswordSignUpControllercImp
    extends VerfiyPasswordSignUpcController {
  VerfiyCodeSignUpcData verfiyCodeSignUpData =
      VerfiyCodeSignUpcData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  String? email;

  @override
  checkcode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();

    var response =
        await verfiyCodeSignUpData.postData(email!, verfiyCodeSignUp);
    print("-------------- controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response?['data']);
       Get.offNamed(AppRoute.customerlocation);
          ModernButtonSheet(
            contentName: "Your account has successfully verified",
            color: AppColor.primaryColor,
            buttonName: "Continue",
          ).show();
        
      } else {
        Get.defaultDialog(
          title: "Warning",
          middleText: "Verfiy Code Is Not Correct!",
          buttonColor: AppColor.primaryColor,
          textConfirm: "Ok",
          onConfirm: () {
            Get.back();
          },
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    email = Get.arguments["email"];

    //   super.onInit();
    // }
  }

  reSend() {
    verfiyCodeSignUpData.resendData(
      email!,
    );

    Get.rawSnackbar(
        title: "Verfiy Code Sended",
        messageText: const Text("Please Check Your Email Again"));
  }
}
