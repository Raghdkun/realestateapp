import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/customerauth/customerdata/customerlocation_controller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

class CustomerLocation extends StatelessWidget {
  const CustomerLocation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CustomerLocationControllerImp());

    return Material(
      child: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Column(children: [
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
            SizedBox(),
            Text(
              "Add Your Location",
              style: TextStyle(
                  fontSize: 28,
                  color: AppColor.secondColor,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You can edit this later on your account setting.",
              style: TextStyle(
                  fontSize: 14,
                  color: AppColor.secondColor,
                  fontWeight: FontWeight.w900),
              // textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width / 1.2,
              height: Get.height / 2.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.grey),
              child: Stack(
                children: [
                  Image.asset(
                    AppImageAsset.onBoardingImageOne,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.Addlocationmap); 
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: Get.width / 1.2,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Select on map",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor.black,
                          ),
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: Get.height /6,), 
            ExploreButton(name: "Skip", onPressed: (){Get.offAllNamed(AppRoute.loginc); })
          ]),
        ),
      )),
    );
  }
}
