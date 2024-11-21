

import 'package:get/get.dart';

class CounterAppController extends GetxController{

  RxInt counter =0.obs;

   increment(){
    counter.value ++;
  }
}