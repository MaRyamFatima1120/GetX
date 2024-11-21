import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/features/view-model/getXBinding%20Logic/getx_binding_logic.dart';

class GetxBinding extends StatefulWidget {
  const GetxBinding({super.key});

  @override
  State<GetxBinding> createState() => _GetxBindingState();
}

class _GetxBindingState extends State<GetxBinding> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'GetXBinding',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(() => Text(
                "Counter App:${Get.find<GetxBindingControllerLogic> ().count}",
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ))),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<GetxBindingControllerLogic> ().increment();
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
