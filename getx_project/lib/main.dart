import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/feature/view/exampl1.dart';
import 'package:getx_project/src/feature/view/example3.dart';
import 'package:getx_project/src/feature/view/example4.dart';
import 'package:getx_project/src/feature/view/favorit_app.dart';
import 'package:getx_project/src/feature/view/image_picker.dart';
import 'package:getx_project/src/feature/view/login_screen.dart';
import 'package:getx_project/src/features/binding/getx.controller_binding.dart';
import 'package:getx_project/src/features/routes/routes.dart';
import 'package:getx_project/src/features/routes/unkonwn_route.dart';

import 'src/feature/view/example2.dart';
//import 'package:getx_project/src/features/view/getXBinding/getx_binding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     // initialBinding: AllControllerBinding(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: ()=>const CounterApp(),transition: Transition.fadeIn),
        GetPage(name: "/second", page: ()=>const CounterAppWithExample(),transition: Transition.fadeIn),
        GetPage(name: "/third", page: ()=>const WorkOnOpacity(),transition: Transition.fadeIn),
        GetPage(name: "/fourth", page: ()=>const SwitchWithClass(),transition: Transition.fadeIn),
        GetPage(name: "/fifth", page: ()=>const FavoritApp(),transition: Transition.fadeIn),
        GetPage(name: "/sixth", page: ()=>const ImagePickerClass(),transition: Transition.fadeIn),
        GetPage(name: "/seventh", page: ()=>const LoginScreen(),transition: Transition.fadeIn)
      ],
      defaultTransition: Transition.zoom,
      unknownRoute:
          GetPage(name: '/not-found', page: () => const UnkonwnRoute()),
   //   home: const GetxBinding(),
    );
  }
}
