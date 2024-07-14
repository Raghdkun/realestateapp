
import 'package:flutter/material.dart';
import 'package:realestateapp/core/constant/color.dart';



ThemeData themeEnglish = ThemeData(

    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      toolbarHeight: 55,
      elevation: 0.0,
      centerTitle: true,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: AppColor.customBlack
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.customBlack
    ),
    
    fontFamily: "Cairo",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.customBlack),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.customBlack),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.customBlack,
          fontWeight: FontWeight.bold,
          fontSize: 17),
      bodyMedium: TextStyle(
          height: 2,
          color: AppColor.customBlack,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    ),
    primaryColor: Colors.red);

ThemeData themeArabic = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.customBlack,
      toolbarHeight: 65,
      elevation: 0.0,
      centerTitle: true,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: AppColor.customBlack
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.customBlack
    ),
    
    fontFamily: "Cairo",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.customBlack),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.customBlack),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.customBlack,
          fontWeight: FontWeight.bold,
          fontSize: 17),
      bodyMedium: TextStyle(
          height: 2,
          color: AppColor.customBlack,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    ),
    primaryColor: Colors.white);

