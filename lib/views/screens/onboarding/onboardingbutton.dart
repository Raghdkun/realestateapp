import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:realestateapp/controllers/onboardingcontroller.dart';
import 'package:realestateapp/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  final String name; 
  const CustomButtonOnBoarding( {super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2,
      height: Get.height / 18,
      margin: const EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        child: Text(
          name, 
          style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
    );
  }
}
