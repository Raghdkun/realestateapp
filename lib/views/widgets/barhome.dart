import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/homescreencontroller.dart';
import 'package:realestateapp/views/widgets/custombar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            // shape: const CircularNotchedRectangle(),
            // notchMargin: 10,
            child: Container(
              // margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(3, ((index) {
                    int i = index > 2 ? index - 1 : index;
                    return CustomButtonAppBar(
                        textbutton: controller.bottomappbar[i]['title'],
                        icondata: controller.bottomappbar[i]['icon'],
                        onPressed: () {
                          controller.changePage(i);
                        },
                        active: controller.currentpage == i ? true : false);
                  }))
                ],
              ),
            )));
  }
}
