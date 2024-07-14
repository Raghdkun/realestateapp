import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/splashscreencontroller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/views/widgets/globalbutton.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenController controller = Get.put(SplashScreenController());
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: Get.width,
              height: Get.height,
              child: Image.asset(
                AppImageAsset.splashscreen,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: Get.height,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: Get.width,
              height: Get.height,
              color: AppColor.secondColor.withOpacity(0.5),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppImageAsset.logo,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlobalButton(
                      name: "Let's Start",
                      onPressed: () {
                        Get.offAllNamed(AppRoute.language);
                      }),
                  SizedBox(
                    height: Get.height / 6,
                  )
                ],
              ),
            ),
            Positioned(
              left: Get.width / 3.7,
              top: Get.height / 5,
              child: Text(
                "Rise \n Real Estate",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
