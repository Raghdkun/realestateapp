import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/services/services.dart';
import 'package:realestateapp/home.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  String? email ; 
  MyServices myServices = Get.find(); 
  List<Widget> listPage = [
    const Home(),
    const Home(),
    
    const Home(),
    

  ];

  List bottomappbar = [
    {"title": "Home", "icon": Icons.home},
   
    {"title": "Favorates", "icon": Icons.favorite_border},
    {"title": "Settings", "icon": Icons.settings},

  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
  @override
  void onInit() {
  email = myServices.sharedPreferences.getString("email") ;
  super.onInit();
  }
}
