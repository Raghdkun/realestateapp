import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/services/prefservices.dart';
import 'package:geolocator/geolocator.dart';



class LanguageController extends GetxController {
  // MyServices myServices = Get.find() ;
  final PrefServices myServices = PrefServices();

  var savedlanguage = "en";

  List<String> lang = [
    "ar",
    "en"
  ] ; 

  saveLocal() {
    myServices.createString("locale", savedlanguage);
  }

  Future<void> setLocal() async {
    myServices.readString("locale").then((value) {
      if (value != '' && value != null) {
        Get.updateLocale(Locale(value.toString().toLowerCase()));
        savedlanguage = value.toString();
        update(); 
      }
    });
  }
  getMyLocation() async {
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      Get.defaultDialog(
        title: 'Permission',
        middleText: "You can't use the app without location permission",
        onConfirm: () async {
          await Geolocator.requestPermission();
        },
      );
      return;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    Get.defaultDialog(
      title: 'Permission',
      middleText: "You can't use the app without location permission",
      onConfirm: () async {
        await Geolocator.openAppSettings();
      },
    );
    return;
  }

  if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {

    setLatLng();
    // getstreetandaddress();
  }
}
setLatLng() async {
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  
}
  @override
  void onInit() {
    setLocal() ; 
    getMyLocation(); 
    super.onInit();
  }
}
