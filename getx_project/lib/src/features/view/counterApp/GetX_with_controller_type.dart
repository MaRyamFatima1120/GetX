import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/features/view-model/counter_app%20_business_logic/getX_builder_logic.dart';

class GetXWithControllerType extends StatefulWidget {
  const GetXWithControllerType({super.key});

  @override
  State<GetXWithControllerType> createState() => _GetXWithControllerTypeState();
}

class _GetXWithControllerTypeState extends State<GetXWithControllerType> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //GetBuilder With ControllerType
          GetBuilder<MyController>(
            init: MyController(),
            //Get UniqueID
            id: 'increment with getBuilder',
            /*//use both of it is not good Practice
            initState: ,
            dispose: ,*/

            builder: (controller) {
              return Center(
                  child:Text(
                    "Counter App:${controller.count}",
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ));
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                //Get.find
                Get.find<MyController >().increment();

              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(150, 50)),
              child: const Text("Click")),
          const SizedBox(
            height: 50,
          ),
          GetBuilder(
            init: MyController(),
              builder: (controller){
            return TextButton(
              onPressed: (){
                Get.find<MyController>().upperCase();
              },
                child: Text("Developed by:${controller.name}",style: TextStyle(color: Colors.black),));
          })

        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: () {
            Get.offAllNamed('/fourth');
            Get.snackbar("Do not go back", "",snackPosition: SnackPosition.BOTTOM);
          },
          child: const Icon(Icons.navigate_next,color: Colors.white,)),
    );
  }
}
