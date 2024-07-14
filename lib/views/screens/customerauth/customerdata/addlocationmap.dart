import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestateapp/controllers/customerauth/customerdata/customerlocation_controller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/views/widgets/explorebutton.dart';

class AddLocationMap extends GetView<CustomerLocationControllerImp> {
  const AddLocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CustomerLocationControllerImp());
    //google maps
    return Material(
      child: SafeArea(
          child: GetBuilder<CustomerLocationControllerImp>(
        builder: (controller) => Container(
          child: Stack(
            children: [
          
          controller.cam != null
              ? GoogleMap(
                  mapToolbarEnabled: true,
                  // myLocationButtonEnabled: true,
                  // myLocationEnabled: true,
                  trafficEnabled: true,
                  zoomControlsEnabled: false,
                  mapType: MapType.normal,
                  markers: controller.marker,
                  onTap: (latlong) {
                    // controller.myCurrentLocation();
                    controller.addMarker(latlong);

                    // controller.updateLocationText(latlong);
                  },
                  initialCameraPosition: controller.cam!,
                  onMapCreated: (GoogleMapController controllermap) {
                    controller.completercontroller!.complete(controllermap);
                    controller.gmc = controllermap;
                    controller.currenlocationMarker();
                  },
                )
              : Center(child: CircularProgressIndicator()),
          Container(
            padding: EdgeInsets.only(bottom: Get.height / 37),
            alignment: Alignment.bottomCenter,
            child: ExploreButton(name: "Choose Location", onPressed: () {}),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(160),
                                color: AppColor.silver.withOpacity(0.8)),
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: Get.height / 8),
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 10,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none),
              // color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                width: Get.width / 1.3,
                height: Get.height / 8,
                child: Text(
                  "Please Choose Your Current Location For Better User Expirence",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
            ],
          )
        ),
      )),
    );
  }
}
