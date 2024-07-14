
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/handlingdatacontroller.dart';
import 'package:realestateapp/core/services/services.dart';
import 'package:realestateapp/data/remote/auth/login.dart';

import '../../../core/class/statusrequest.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  MyServices myServices = Get.find();

  bool isShowPassword = true;

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;

      update();
      var response = await loginData.postData(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          if (response['data']['users_approve'] == "1".toString()) {
            myServices.sharedPreferences
                .setString("id", response['data']['users_id'].toString());
            myServices.sharedPreferences
                .setString("username", response['data']['users_name']);
            myServices.sharedPreferences
                .setString("email", response['data']['users_email']);
            
            myServices.sharedPreferences.setString("step", "2");
            myServices.sharedPreferences.setString("location", "1");

            Get.offNamed(AppRoute.home);
          } else {
            print("bla");
            Get.toNamed(AppRoute.verfiyCodeSignup,
                arguments: {"email": email.text});
          }
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("object");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   // print(value);
    //   // String? token = value;
    // });
    

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
