import 'package:get/get.dart';

class Counter {
  /*//Approach1
  RxInt count =0.obs;*/

  //Second Approach
  int count;
  Counter({required this.count});
}

class CounterAppLogic extends GetxController {


/*
=======Approach1==========
final counter = Counter();
void increment(){
    counter.count.value++;
  }
*/

//=========Approach2============

var counter = Counter(count: 0).obs;

void  increment(){
  counter.update((counter) {
    if (counter != null) {
      counter.count++;
    }
  });
}

}
