import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/color.dart';

class GlobalButton extends StatelessWidget {
  final String name ; 
  final void  Function() onPressed ; 
  const GlobalButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width / 2.2,
      height: Get.height / 12.8,
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: MaterialButton(
          onPressed: onPressed, 
          child: Text(
            name,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          )),
    );
  }
}
