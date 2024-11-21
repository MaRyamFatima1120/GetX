import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/feature/view-model/example1_controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  CounterAppController counterController=Get.put(CounterAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Counter App",style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed("/second");
          }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)),
        ],
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),
      body: Center(child: Obx(()=> Text("Count Number is ${counterController.counter} ",style: const TextStyle(
            fontSize: 20
        ),),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterController.increment();
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}
