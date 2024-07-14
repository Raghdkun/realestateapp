
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/class/statusrequest.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/handlingdatacontroller.dart';
import 'package:realestateapp/data/remote/customerauth/forgetpassword/checkemail.dart';


abstract class ForgetPasswordcController extends GetxController {
  checkemail(); 
}

class ForgetPasswordControllercImp extends ForgetPasswordcController {
  
  CheckEmailcData checkEmailData  = CheckEmailcData(Get.find()) ; 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
  StatusRequest statusRequest = StatusRequest.none ;
  

   TextEditingController email = TextEditingController();

  @override
  checkemail() async  {
     final isValided  = formstate.currentState?.validate()??true;
    if (isValided){
       statusRequest = StatusRequest.loading; 
      update() ; 
      var response = await checkEmailData.postdata(email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCode , arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Not Found"); 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

 
  @override
  void onInit() {
    
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}