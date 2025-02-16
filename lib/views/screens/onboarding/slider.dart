import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/onboardingcontroller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/data/static/static.dart';

class SliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const SliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: ((context, i) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const SizedBox(
                //   height: 80,
                // ),
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: AppColor.black),
                ),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2,
                          color: AppColor.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                Image.asset(
                  onBoardingList[i].image!,
                  // height: 200,
                  width: Get.width / 1.3,
                  fit: BoxFit.fill,
                ),
                // const SizedBox(
                //   height: 10,
                // ),

                // const SizedBox(
                //   height: 50,
                // ),
              ],
            )));
  }
}
