import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:realestateapp/binding/initial_binding.dart';
import 'package:realestateapp/color_schemes.dart';
import 'package:realestateapp/core/functions/translatesdiraction.dart';
import 'package:realestateapp/core/localization/languages/transtions.dart';
import 'package:realestateapp/core/services/services.dart';
import 'package:realestateapp/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // LocalLanguage controller = Get.put(LocalLanguage());
    return GetMaterialApp(
        title: 'Real Estate',
        getPages: routes,
        initialBinding: IntialBindings(),
        translations: MyTranslation(),
        locale: const Locale('en'),
        fallbackLocale: const Locale('en'),
        textDirection: TranslateDiraction(TextDirection.rtl, TextDirection.ltr),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme));
  }
}
