import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/signup_controller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';
import 'package:shimmer/shimmer.dart';

class SignUpShimmer extends StatelessWidget {
  const SignUpShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: SafeArea(
          child: Shimmer.fromColors(
            enabled: true,
            baseColor: AppColor.silver,
            highlightColor: Colors.grey.shade100,
            child: Column(
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
            // SizedBox(
            //   height: Get.height / 6.7,
            // ),
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create Your Account",
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
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      color: AppColor.silver,
                      width: Get.width / 1.2,
                      child: TextFormField(
                        
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Full name",
                              suffixIcon: Icon(Icons.person_2_outlined),
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
                    child: Container(
                      color: AppColor.silver,
                      width: Get.width / 1.2,
                      child: TextFormField(
                        
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
                    height: 10,
                  ),
                  // email
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      color: AppColor.silver,
                      width: Get.width / 1.2,
                      child: TextFormField(
                        
                          keyboardType: TextInputType.phone,
                          
                          decoration: InputDecoration(
                              hintText: "Your Number",
                              suffixIcon: Icon(Icons.call_outlined),
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
                      child: GetBuilder<SignUpControllerImp>(
                        builder: (controller) {
                          return Container(
                            color: AppColor.silver,
                            width: Get.width / 1.2,
                            child: TextFormField(
                              controller: controller.password,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText:
                                    controller.isShowPassword ? true : false,
                                decoration: InputDecoration(
                                    hintText: "Your Password",
                                    suffixIcon: Icon(controller.isShowPassword
                                        ? Icons.lock_outline
                                        : Icons.lock_open_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none))),
                          );
                        },
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Terms Of Services",
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColor.secondColor,
                                fontWeight: FontWeight.w700
            
                              ),
                              // textAlign: TextAlign.justify,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Text(
                              "Show Password",
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColor.secondColor,
                                fontWeight: FontWeight.w700
                              ),
                              // textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 10,
                  ),
                  ExploreButton(
                    name: "Register",
                    onPressed: () {
                      Get.toNamed(AppRoute.verfiyCodeSignup); 
                    },
                  ),
                  
                ],
              ),
            )
                  ],
                ),
          )),
    );
  }
}
