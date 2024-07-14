
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/apptheme.dart';
import 'package:realestateapp/core/services/services.dart';


class LocalLanguage extends GetxController {
  Locale? language;
  bool islang = false ;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;
  
  get themeArabic => null;

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "Arabic" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // FcmConfig() ;
    // RequsetpermisionNotifications();
    changelang("English");
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == 'Arabic') {
      language = const Locale("Arabic");
      appTheme = themeArabic ;
      islang = true ;
    } else if (sharedPrefLang == 'English') {
      language = const Locale("English");
      appTheme = themeEnglish ;
      islang = true ;
    } else {
      (language = Locale(Get.deviceLocale!.languageCode));
      appTheme = themeEnglish ;
    }
    super.onInit();
  }
}
