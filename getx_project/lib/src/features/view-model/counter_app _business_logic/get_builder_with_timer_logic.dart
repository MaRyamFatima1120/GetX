import 'dart:async';

import 'package:get/get.dart';

class GetBuilderLogicWithTimer extends GetxController {
  var count = 0;

  Future<void> increment() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    increment();
  }
}
