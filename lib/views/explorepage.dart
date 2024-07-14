import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/explorecontroller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

class ExplorePage extends GetView<ExplorePageController> {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplorePageController());
    return Material(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: Get.height / 4,
                    child: Image.asset(AppImageAsset.explore1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    // height: Get.height / 4,
                    child: Image.asset(AppImageAsset.explore2),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: Get.height / 4,
                    child: Image.asset(AppImageAsset.explore3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    // height: Get.height / 4,
                    child: Image.asset(AppImageAsset.explore4),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Text(
              "Ready To Explore ?",
              style: TextStyle(
                  fontSize: 30,
                  color: AppColor.customBlack,
                  fontWeight: FontWeight.w900),
              // textAlign: TextAlign.justify,
            ),
          ),
          Column(
            children: [
              ExploreButton(
                name: "I am an estate owner",
                onPressed: () {
                  Get.toNamed(AppRoute.login);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ExploreButton(
                name: "I want to Explore",
                onPressed: () {
                  Get.toNamed(AppRoute.loginc);
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
