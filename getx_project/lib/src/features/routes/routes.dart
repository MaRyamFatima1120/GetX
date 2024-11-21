import 'package:get/get.dart';
import 'package:getx_project/src/features/binding/getx.controller_binding.dart';
import 'package:getx_project/src/features/view-model/getXBinding%20Logic/getx_binding_logic.dart';
import 'package:getx_project/src/features/view/getXBinding/api_display_&_fetch.dart';
/*import 'package:getx_project/src/features/view/counterApp/getx_service.dart';
import 'package:getx_project/src/features/view/counterApp/getx_worker.dart';

import '../view/counterApp/GetX_with_controller_type.dart';
import '../view/counterApp/Get_builder_with_timer.dart';
import '../view/counterApp/counter_app_logic.dart';
import '../view/counterApp/counter_page.dart';*/
import '../binding/api_controller_binding.dart';
import '../view/getXBinding/getx_binding.dart';
import 'unkonwn_route.dart';

class AppRoute {
  static const String initialRoute = '/';
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => const GetxBinding(),binding: AllControllerBinding()),
    GetPage(name: '/second', page: () => const ApiClassDisplay(),binding: ApiControllerBinding()),

  ];


/*  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => const CounterApp()),
    GetPage(name: '/second', page: () => const CounterAppWithLogic()),
    GetPage(name: '/third', page: () => const GetXWithControllerType()),
    GetPage(name: "/fourth", page: () => const GetxWorker()),
    GetPage(name: "/fifth", page: () => const GetBuilderWithTimer()),
    GetPage(name: "/sixth", page: () => const GetxServicePage()),
  ];*/

  static final unKnownRoute =
      GetPage(name: '/not-found', page: () => const UnkonwnRoute());
}
