import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/login_controller.dart';
import 'package:realestateapp/controllers/customerauth/login_controller.dart';
import 'package:realestateapp/core/class/handlingdataview.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/views/widgets/buttonsheet.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

class Loginc extends GetView<LoginControllercImp> {
  const Loginc({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllercImp());
    return Material(
      child: SafeArea(
          child: GetBuilder<LoginControllercImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Form(
              key: controller.formstate,
              child: Column(
                children: [
                  Container(
                      height: Get.height / 6.7,
                      child: Image.asset(AppImageAsset.logo)),
                  // SizedBox(
                  //   height: Get.height / 6.7,
                  // ),
                  Column(
                    children: [
                      Text(
                        "Let's Sign in ",
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
                        "quis nostrud exercitation ullamco laboris nisi ut",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.secondColor,
                            fontWeight: FontWeight.w900),
                        // textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // email
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Container(
                          color: AppColor.silver,
                          width: Get.width / 1.2,
                          child: TextFormField(
                              controller: controller.email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Your Email",
                                  suffixIcon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none))),
                        ),
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      Directionality(
                          textDirection: TextDirection.ltr,
                          child: GetBuilder<LoginControllercImp>(
                            builder: (controller) {
                              return Container(
                                color: AppColor.silver,
                                width: Get.width / 1.2,
                                child: TextFormField(
                                    controller: controller.password,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: controller.isShowPassword
                                        ? true
                                        : false,
                                    decoration: InputDecoration(
                                        hintText: "Your Password",
                                        suffixIcon: Icon(
                                            controller.isShowPassword
                                                ? Icons.lock_outline
                                                : Icons.lock_open_outlined),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none))),
                              );
                            },
                          )),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: AppColor.secondColor,
                                      fontWeight: FontWeight.w700),
                                  // textAlign: TextAlign.justify,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.showPassword();
                                },
                                child: Text(
                                  "Show Password",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: AppColor.secondColor,
                                      fontWeight: FontWeight.w700),
                                  // textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height / 4,
                      ),
                      ExploreButton(
                        name: "Login",
                        onPressed: () {
                          controller.login();
                          
                        },
                      ),
                      SizedBox(
                        height: Get.height / 23,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account? "),
                          InkWell(
                              onTap: () {
                                Get.toNamed(AppRoute.signUp);
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
      )),
    );
  }
}
