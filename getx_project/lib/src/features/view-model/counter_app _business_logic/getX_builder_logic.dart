
import 'package:get/get.dart';

class MyController extends GetxController{

  var count=0;
  var name ='Maryam';

  increment(){
    count ++;
    update(['increment with getBuilder']);

  }

  upperCase(){
    name=name.toUpperCase();
    update();
  }

  //Flutter GetX Controller LifeCycle
/*
*
Update(): Using this, widgets can listen to the changes made by the methods defined in controller. It is similar to notifyListeners in providers

onInit() : is equivalent the initState() in Stateful call when enter the page .

onReady() : is call when the build widget is finished .

onClose() : is equivalent the dispose() in Stateful.
* */


}
