import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

class ModernButtonSheet {
  final String contentName;
  final Color color;
  final String buttonName;

  ModernButtonSheet({
    required this.contentName,
    required this.color,
    required this.buttonName,
  });

  void show() {
    Get.bottomSheet(
      
      ignoreSafeArea: false, 
      Container(
        width: Get.width,
        height: Get.height / 2.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.circleCheck, size: 130, color: color),
            SizedBox(
              height: 15,
            ),
            Text(
              contentName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            ExploreButton(
              name: buttonName,
              onPressed: () {
                Get.close(1);
              },
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}