import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view-model/favorit_app_controller.dart';

class FavoritApp extends StatefulWidget {
  const FavoritApp({super.key});

  @override
  State<FavoritApp> createState() => _FavoritAppState();
}

class _FavoritAppState extends State<FavoritApp> {

 final FavoritAppController controller =Get.put(FavoritAppController());
  @override
  Widget build(BuildContext context) {
    print("Build Again and Again");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Favorit App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/sixth");
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: controller.fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(controller.fruits[index].toString()),
                trailing: Obx(()=>
                 Icon(
                    Icons.favorite,
                    color: controller.tempFruits.contains(controller.fruits[index].toString())
                        ? Colors.red
                        : Colors.grey.withOpacity(0.3),
                  ),
                ),
                onTap: () {
                  if(controller.tempFruits.contains(controller.fruits[index].toString())){
                    controller. removeFromFavorit(controller.fruits[index].toString());
                  }else{
                    controller. addToFavorit(controller.fruits[index].toString());
                  }


                },
              ),
            );
          }),
    );
  }
}


/*

=================With the Help of SetState==============================

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritApp extends StatefulWidget {
  const FavoritApp({super.key});

  @override
  State<FavoritApp> createState() => _FavoritAppState();
}

class _FavoritAppState extends State<FavoritApp> {
  List<String> fruits = ["Apples", "Mangoes", "Banana", "Orange", "Kiwi"];
  List<String> tempFruitList = [];

  @override
  Widget build(BuildContext context) {
    print("Rebuild Agian and Again");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Favorit App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("");
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(fruits[index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color: tempFruitList.contains(fruits[index].toString())
                      ? Colors.red
                      : Colors.grey.withOpacity(0.3),
                ),
                onTap: () {
                  if(tempFruitList.contains(fruits[index].toString())){
                    tempFruitList.remove(fruits[index].toString());
                  }else{
                    tempFruitList.add(fruits[index].toString());
                  }

                  setState(() {});
                },
              ),
            );
          }),
    );
  }
}
*/