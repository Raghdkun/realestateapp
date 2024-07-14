import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/estatedetailscontroller.dart';

class RestateDetImages extends StatelessWidget {
  const RestateDetImages({super.key});

  @override
  Widget build(BuildContext context) {
    EstateDetailsController controller = Get.put(EstateDetailsController());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: InteractiveViewer(
        clipBehavior: Clip.none,
        // transformationController: controller.transformationController,
        scaleEnabled: true,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onDoubleTap: () {
                  
                },
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 9 / 8,
                    // height: 350,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                  items: controller.items.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          // padding: EdgeInsets.symmetric(vertical: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              
                              "$i",
                              fit: BoxFit.fill,
                              alignment: Alignment.center,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}