import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view-model/counter_app _business_logic/counter_controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
/*  //Approach1
  //if individuals  variable are Observable
  final counter = Counter();*/

//Approach2
//if entire class is observable
  final counter = Counter(count: 0).obs;

  @override
  Widget build(BuildContext context) {
    print("Build one time");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(

              /*
          ===========Approach1============
         child: Obx(() => Text(
                  "Counter App:${counter.count.value}",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ))),*/

              //===========Approach2================
              child: Obx(() => Text(
                    "Counter App:${counter.value.count}",
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ))),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                counter.update((counter) {
                  if (counter != null) {
                    counter.count++;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(150, 50)),
              child: const Text("Click")),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
          onPressed: () {
            Get.toNamed('/second');
          },
          child: const Icon(Icons.navigate_next,color: Colors.white,)),
    );
  }
}
