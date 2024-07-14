import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/homescreencontroller.dart';
import 'package:realestateapp/views/widgets/barhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: ((controller) => Scaffold(
            
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: controller.listPage.elementAt(controller.currentpage))));
  }
}
