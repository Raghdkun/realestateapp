import 'dart:async';

import 'package:flutter/material.dart';

import 'package:geocoding/geocoding.dart';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/services/services.dart';

abstract class CustomerLocationController extends GetxController {}

class CustomerLocationControllerImp extends CustomerLocationController {
  late Placemark placemark;
  double? latitude;
  double? longitude;
  Set<Marker> marker = {};
  late GoogleMapController controller;
  Position? cl;
  var lat;
  var long;
  String? dec;
  String? city;
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

  gotoNextPage() {
    Get.toNamed(AppRoute.addressadd, arguments: {
      "lat": cl!.latitude,
      "lng": cl!.longitude,
    });
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

  myCurrentLocation() {
    lat = cl!.latitude;
    long = cl!.longitude;
    gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));
    marker.clear();
    marker.add(Marker(
        markerId: MarkerId("location"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        draggable: true,
        position: LatLng(cl!.latitude, cl!.longitude),
        onTap: () {
          gmc.animateCamera(
              CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));

          update();
        }));
  }

  addMarker(position) {
    lat = cl!.latitude;
    long = cl!.longitude;
    // gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));
    marker.remove("location");
    update();
    marker.add(Marker(
        markerId: MarkerId("location"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        draggable: true,
        position: position,
        onTap: () {
          gmc.animateCamera(
              CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));

          update();
        }));
    // gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));

    update();
  }

  currenlocationMarker() async {
    //  iconFun();
    marker.add(Marker(
        markerId: MarkerId("location"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        draggable: true,
        position: LatLng(cl!.latitude, cl!.longitude),
        onTap: () {
          // gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));

          update();
        }));

    // gmc.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 18.5746));
    update();
  }

  getstreetandaddress() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude!, longitude!);
    city = placemarks[0].country;
    // address = placemarks[0].name;
    print("====street $city");
  }

  setLatLng() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    latitude = position.latitude;
    longitude = position.longitude;
    print("====lat $latitude");
    print("====lng $longitude");
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
        return permission;
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

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      setLatLng();
      getLatAndLong();
      // getstreetandaddress();
      update();
      // getstreetandaddress();
    }
  }

  stateStream() {
    serviceStatusStream =
        Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
      print("============= $status");
      update();
    });
  }

  @override
  void onInit() async {
    getMyLocation();
    completercontroller = Completer<GoogleMapController>();
    cl = await Geolocator.getCurrentPosition();
    stateStream();
    placemark = Placemark();

    // cam = CameraPosition(target: LatLng(latitude!, longitude!));

    super.onInit();
  }
}
