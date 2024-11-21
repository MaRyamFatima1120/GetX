import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view-model/counter_app _business_logic/get_builder_with_timer_logic.dart';

class GetBuilderWithTimer extends StatefulWidget {
  const GetBuilderWithTimer({super.key});

  @override
  State<GetBuilderWithTimer> createState() => _GetBuilderWithTimerState();
}

class _GetBuilderWithTimerState extends State<GetBuilderWithTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'GetXBuilder With Timer',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder(
                init: GetBuilderLogicWithTimer(),
                builder: (controller) {
                  return Text(
                    "Counter With Timer:${controller.count}",
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            Get.offNamed('/sixth');
          },
          child: const Icon(
            Icons.navigate_next,
            color: Colors.white,
          )),
    );
  }
}
