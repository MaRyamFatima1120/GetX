import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/feature/view-model/example2_controller.dart';


class CounterAppWithExample extends StatefulWidget {
  const CounterAppWithExample({super.key});

  @override
  State<CounterAppWithExample> createState() => _CounterAppWithExampleState();
}

class _CounterAppWithExampleState extends State<CounterAppWithExample> {
    final controller =CounterAppWithClass(counter: 0).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Counter App with Class",style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed("/third");
          }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white
        ),

      ),
      body: Center(child: Obx(()=> Text("Count Number is ${controller.value.counter} ",style: const TextStyle(
          fontSize: 20
      ),),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.update((controller){
            if(controller != null){
              controller.counter++;
            }
        });
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}
