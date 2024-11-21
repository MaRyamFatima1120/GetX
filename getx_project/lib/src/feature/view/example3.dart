import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view-model/example3_controller.dart';

class WorkOnOpacity extends StatefulWidget {
  const WorkOnOpacity({super.key});

  @override
  State<WorkOnOpacity> createState() => _WorkOnOpacityState();
}

class _WorkOnOpacityState extends State<WorkOnOpacity> {
 // double opacity =.3;
 // final WorkOnOpacityController controller = Get.put(WorkOnOpacityController());
  final workController = WorkOnOpacityController(opacity: 0.2).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:const Text("Color Opacity App",style: TextStyle(
              color: Colors.white
          ),),
          actions: [
            IconButton(onPressed: (){
              Get.toNamed("/fourth");
            }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)),
          ],
          iconTheme: const IconThemeData(
              color: Colors.white
          ),

        ),
        body: Column(
        children: [
          Expanded(
            child: Obx(()=>
               Container(
               // color: Colors.red.withOpacity(controller.opacity.value),
                 color: Colors.red.withOpacity(workController.value.opacity),
              ),
            ),
          ),
          Obx(()=>Slider(value: workController.value.opacity, onChanged:(value){
            workController.update((controller){
             if(controller != null){
               controller.opacity=value;
             }
            });
          }

          ))
        ]));
  }
}
