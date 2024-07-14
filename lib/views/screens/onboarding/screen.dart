import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/onboardingcontroller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/views/screens/onboarding/dotcontroller.dart';
import 'package:realestateapp/views/screens/onboarding/onboardingbutton.dart';
import 'package:realestateapp/views/screens/onboarding/slider.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                

                Container(
                  width: 60, 
                  height: 120, 
                  child: Image.asset(
                    AppImageAsset.logo,
                    height: 80,
                    // fit: BoxFit.fitWidth,
                    // width: double.infinity,
                    
                  ),
                ),
                SizedBox(width: Get.width /1.5,), 
                GetBuilder<OnBoardingControllerImp>(builder: (controller) {
                  return Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(color: AppColor.silver, borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                onPressed: () {
                  controller.skipButton(); 
                },
                child: Text("Skip", ),
                  ));
                
                },)
              ],
            ),
          ),
          Expanded(flex: 13, child: SliderOnBoarding()),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: DotControllerOnboardeing(),
                  ),
                  // Spacer(flex: 2),
                  GetBuilder<OnBoardingControllerImp>(
                    builder: (controller) =>  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButtonOnBoarding(name: controller.currentPage == 2 ? "Finish" : "Next"),
                          )
                        
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
