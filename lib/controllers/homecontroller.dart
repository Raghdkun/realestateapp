import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/services/services.dart';


class HomeController extends GetxController {
  String? username;
  String? id;
  String? lang;
  double? latitude;
  double? longitude;
  String? street;
  String? address;
  late Placemark placemark;
  Set<Marker> marker = {};
  late GoogleMapController controller;
  Position? cl;
  var lat;
  var long;
  String? dec;
  // late String street;
  CameraPosition? cam;
  late GoogleMapController gmc;
  bool showsheet = true;
  String apiKey = "AIzaSyBnpX7LyUCyyRSTXj9vYNMLJq1uhfiH0dU";
  List<Placemark> place = [];
  List<String> types = [];
  late StreamSubscription serviceStatusStream;
  final myIcon = BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(48, 48)), AppImageAsset.logo);
  late Completer<GoogleMapController>? completercontroller;

  MyServices myServices = Get.find();

  addlocation()async {
    if (myServices.sharedPreferences.getString("location") != "1"){
    await  Future.delayed(Duration(seconds: 8)); 
      Get.toNamed(AppRoute.customerlocation); 
    }
  }

  initialData() {
    // myServices.sharedPreferences.clear() ;
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
    
  }
  Future<void> getLatAndLong() async {
    cl = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl!.latitude;
    long = cl!.longitude;
    cam = await CameraPosition(
      target: LatLng(lat, long),
      zoom: 17.4746,
    );
    update();
  }

  distance() {
    double distanceBetween = Geolocator.distanceBetween(
        cl!.altitude, cl!.longitude, 33.489420, 36.306942);
    int km = distanceBetween.toInt();
    double distanceInKm = km / 1000;
    print(distanceBetween);

    print("$distanceInKm KM");
  }


  getstreetandaddress() async {
    List<geo.Placemark> placemarks =
        await geo.placemarkFromCoordinates(latitude!, longitude!);
    street = placemarks[0].street;
    address = placemarks[0].name;
    print("====street $street");
    print("====address $address");


  }

  setLatLng() async {
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
   latitude = position.latitude;
   longitude = position.longitude;
  print("====lat $latitude");
  print("====lng $longitude");
}

myCurrentLocation() {
    lat = cl!.latitude;
    long = cl!.longitude;
    gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));
    marker.clear();
    marker.add(Marker(
        markerId: MarkerId("newride"),
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        draggable: true,
        position: LatLng(cl!.latitude, cl!.longitude),
        onTap: () {
          showsheet = true;

          update();
        }));
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


  @override
  void onInit() async {

    initialData();
    getMyLocation();
    completercontroller = Completer<GoogleMapController>();
    cl = await Geolocator.getCurrentPosition();
    // cam = CameraPosition(target: LatLng(latitude!, longitude!)); 
    addlocation(); 
    super.onInit();
  }
}
