
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/forgetpassword/verfiypassword_controller.dart';
import 'package:realestateapp/controllers/customerauth/forgetpassword/verfiypassword_controller.dart';
import 'package:realestateapp/core/class/handlingdataview.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/views/widgets/auth/bodytextfield.dart';
import 'package:realestateapp/views/widgets/auth/texttitlefield.dart';



class VerfiyCodec extends StatelessWidget {
  const VerfiyCodec({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllercImp());
    return Scaffold(
        // backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: AppColor.pink,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "24".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: GetBuilder<VerifyCodeControllercImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: ListView(
                children: [
                  TextTitleField(
                    text: "26".tr,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BodyTextField(
                    bodytext: "25".tr,
                  ),
                  const BodyTextField(
                    bodytext: "example@gmail.com",
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // const Text(
                  //   "Forget Password?",
                  //   textAlign: TextAlign.right,
                  // ),
                  OtpTextField(
                    borderWidth: 4,
                    borderRadius: BorderRadius.circular(20),
                    fieldWidth: 50,
                    numberOfFields: 5,
                    borderColor: Colors.white70,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToResetPassword(verificationCode);
                    }, // end onSubmit
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
