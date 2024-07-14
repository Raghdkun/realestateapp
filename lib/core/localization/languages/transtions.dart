import 'package:get/get.dart';
import 'package:realestateapp/core/localization/languages/ar.dart';
import 'package:realestateapp/core/localization/languages/en.dart';


class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
       "en" : en , 
       "ar" : ar , 
};
}