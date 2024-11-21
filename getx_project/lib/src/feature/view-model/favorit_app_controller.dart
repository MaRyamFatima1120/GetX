import 'package:get/get.dart';

class FavoritAppController extends GetxController{

  RxList<String> fruits=["Apples", "Mangoes", "Banana", "Orange", "Kiwi"].obs;
  RxList tempFruits =[].obs;

 addToFavorit(value){
   tempFruits.add(value);
 }
  removeFromFavorit(value){
    tempFruits.remove(value);
  }
}



/*
class FavoritApp{
  List<String> fruits = ["Apples", "Mangoes", "Banana", "Orange", "Kiwi"];
  List<String> tempFruitList = [];

  FavoritApp({required this.fruits,required this.tempFruitList});

}
*/
