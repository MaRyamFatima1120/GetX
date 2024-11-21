

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/features/view-model/counter_app%20_business_logic/getX_builder_logic.dart';
import 'package:getx_project/src/features/view-model/getXBinding%20Logic/api_display_&_fetch_logic.dart';
import 'package:getx_project/src/features/view-model/getXBinding%20Logic/getx_binding_logic.dart';

class ApiControllerBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ApiControllerLogic>(()=>ApiControllerLogic());
  }
}