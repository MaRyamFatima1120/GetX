
import 'package:flutter_getx_with_mvvm/src/res/routes/routes_name.dart';
import 'package:flutter_getx_with_mvvm/src/view/splash_page.dart';
import 'package:get/get.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RouteName.splashPage, page: ()=>const SplashPage(),
    transitionDuration: const Duration(milliseconds: 250),
    transition: Transition.zoom),

  ];
}
    