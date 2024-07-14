import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/virfeypasswordsignup_controller.dart';
import 'package:realestateapp/core/class/handlingdataview.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';


class VerfiyCodeSignUp extends GetView<VerfiyPasswordSignUpControllerImp> {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerfiyPasswordSignUpControllerImp());
    return Material(
      child: SafeArea(
        child: GetBuilder<VerfiyPasswordSignUpControllerImp>(builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: Column(
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(160),
                            color: AppColor.silver.withOpacity(0.5)),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    // SizedBox(width: Get.width /5,),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: Get.height / 6.7,
                          child: Image.asset(AppImageAsset.logo)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Enter The Code",
                  style: TextStyle(
                      fontSize: 32,
                      color: AppColor.secondColor,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter the 4 digit code that we just sent to ",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.secondColor,
                      fontWeight: FontWeight.w900),
                  // textAlign: TextAlign.justify,
                ),
                Text(
                  "${controller.email}",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.secondColor,
                      fontWeight: FontWeight.w900),
                  // textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: Get.height / 10,
                ),
                OtpTextField(
                  borderWidth: 2,
                  keyboardType: TextInputType.number,
                  focusedBorderColor: AppColor.secondColor,

                  borderRadius: BorderRadius.circular(8),
                  fieldWidth: 70,
                  numberOfFields: 4,
                  borderColor: AppColor.silver,
                  decoration: InputDecoration(),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToSuccessSignUp(verificationCode);
                  }, // end onSubmit
                ),
              ],
            ),
            SizedBox(
              height: Get.height / 5,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: Get.width / 4.5,
              decoration: BoxDecoration(
                  color: AppColor.silver,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " 59s ",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.timer_outlined)
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont Receive The OTP?"),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
              ],
            )
          ],
        ),),)
      ),
    );
  }
}
