
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/forgetpassword/resetpassword_controller.dart';
import 'package:realestateapp/controllers/customerauth/forgetpassword/resetpassword_controller.dart';
import 'package:realestateapp/core/class/handlingdataview.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/functions/validinput.dart';
import 'package:realestateapp/views/widgets/auth/bodytextfield.dart';
import 'package:realestateapp/views/widgets/auth/custombutton.dart';
import 'package:realestateapp/views/widgets/auth/textformfield.dart';
import 'package:realestateapp/views/widgets/auth/texttitlefield.dart';


class ResetPasswordc extends StatelessWidget {
  const ResetPasswordc({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllercImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.pink,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "27".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: GetBuilder<ResetPasswordControllercImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: ListView(
                children: [
                  TextTitleField(
                    text: "28".tr,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BodyTextField(
                    bodytext: "29".tr,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField(
                    isNumber: false,
                    vaild: (val) {
                      return validInput(val!, 7, 30, "password");
                    },
                    myController: controller.password,
                    hintText: "8".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "9".tr,
                  ),
                  CustomTextFormField(
                    isNumber: false,
                    vaild: (val) {
                      return validInput(val!, 7, 30, "password");
                    },
                    myController: controller.repassword,
                    hintText: "30".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "32".tr,
                  ),

                  // const Text(
                  //   "Forget Password?",
                  //   textAlign: TextAlign.right,
                  // ),

                  const SizedBox(
                    height: 10,
                  ),
                  CustomButtonAuth(
                    text: "31".tr,
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    },
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
