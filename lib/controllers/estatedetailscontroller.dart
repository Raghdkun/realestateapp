import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstateDetailsController extends GetxController {
int zoomIn = 0 ;

  List<String> items = [
    "assets/images/one.PNG",
    "assets/images/two.PNG",
    "assets/images/three.PNG",
  ];
  TransformationController transformationController =
      TransformationController();
  increment() {
    zoomIn++ ; 
  }

@override
  void onInit() {
    
    super.onInit();
  }  
  @override
  void dispose() {
    transformationController.dispose();
    super.dispose();
  }
}
