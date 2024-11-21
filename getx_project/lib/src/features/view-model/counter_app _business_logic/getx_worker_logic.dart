import 'package:get/get.dart';

class WorkerController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
/*
    //call everytime When value changed
    ever(count, (callback)=>print('Ever:$count'));
    //The argument type 'RxInt' can't be assigned to the parameter type 'List<RxInterface<dynamic>>'. It must be List
    everAll(count, (callback)=>('EverAll:$count'));

    //call onetime when value changed
    once(count, (callback)=>print("Once:$count"));

    //debounce
    debounce(count, (callback)=>print("Count Debounce:$count"),time: Duration(seconds: 3));
    */

    //interval

    interval(count, (callback) => print("Count Interval:$count"),
        time: const Duration(seconds: 1));


  }
}
