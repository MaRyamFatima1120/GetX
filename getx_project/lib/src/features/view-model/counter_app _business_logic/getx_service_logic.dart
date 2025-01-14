
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService{
    Future<void> increment() async{
      SharedPreferences prefs =await SharedPreferences.getInstance();
      int counter=(prefs.getInt('counter') ?? 0) +1;
      print("Pressed $counter timer");
      prefs.setInt('counter', counter);
    }
}