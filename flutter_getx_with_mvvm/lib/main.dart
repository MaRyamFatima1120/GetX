import 'package:flutter/material.dart';
import 'package:flutter_getx_with_mvvm/src/res/getx_localization/language.dart';
import 'package:flutter_getx_with_mvvm/src/res/routes/routes.dart';
import 'package:flutter_getx_with_mvvm/src/view/splash_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(),
      fallbackLocale: Locale('en''US'),
      locale: const Locale('en''US'),
      getPages:AppRoutes.appRoutes(),

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const SplashPage(),
    );
  }
}

