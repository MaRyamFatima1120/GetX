import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/features/view-model/counter_app%20_business_logic/counter_app_logic.dart';


class CounterAppWithLogic extends StatefulWidget {
  const CounterAppWithLogic({super.key});

  @override
  State<CounterAppWithLogic> createState() => _CounterAppWithLogicState();
}

class _CounterAppWithLogicState extends State<CounterAppWithLogic> {

//Approach1
  //if individuals  variable are Observable

  CounterAppLogic controller = Get.put(CounterAppLogic());


//Approach2
//if entire class is observable



  @override
  Widget build(BuildContext context) {
    print("Build one time");

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(

       /* //  ===========Approach1============
         child: Obx(() => Text(
                  "Counter App:${controller.count.value}",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ))),*/

             //===========Approach2================
                child: Obx(() => Text(
                  "Counter App:${controller.counter.value.count}",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ))),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {

               /*   //Approach1
                  controller.increment();*/


                  //Approach2 with Class
                  controller.increment();

                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(150, 50)),
                child: const Text("Click")),

          ],
        ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            Get.offNamed('/third');
            Get.snackbar('Cannot go Back', '');
          },
          child: const Icon(Icons.navigate_next,color: Colors.white,)),
    );
  }
}
