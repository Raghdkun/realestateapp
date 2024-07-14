import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/services/services.dart';
import 'package:realestateapp/data/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  skipButton();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoute.explore);

      // go to next page
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeIn);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  skipButton() {
    currentPage = 3;
    if (currentPage == 3) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoute.explore);
      // go to next page
    }
    update();
  }
}
