import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/color.dart';

class ExploreButton extends StatelessWidget {
  final String name ; 
  final void  Function() onPressed ; 
  const ExploreButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: Get.width / 1.5,
        height: Get.height / 12.8,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: MaterialButton(
            onPressed: onPressed, 
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
