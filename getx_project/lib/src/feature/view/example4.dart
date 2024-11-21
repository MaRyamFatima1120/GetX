import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/src/feature/view-model/example4_controller.dart';

class SwitchWithClass extends StatefulWidget {
  const SwitchWithClass({super.key});

  @override
  State<SwitchWithClass> createState() => _SwitchWithClassState();
}

class _SwitchWithClassState extends State<SwitchWithClass> {
  //final SwitchController controller = Get.put(SwitchController());
  //var switchValue =false;
  var switchController =SwitchController(switchValue: false).obs;
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Switch App",style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed("/fifth");
          }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)),
        ],
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),
      body: Obx(()=>
        Container(
          color: switchController.value.switchValue ? Colors.white:Colors.black,
          child: Flex(direction: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(()=>
                  Text("Notification",style: TextStyle(
                    color:switchController.value.switchValue?Colors.black:Colors.white
                  ),),
                ),
               // Obx(()=>Switch(value: controller.switchValue.value, onChanged: controller.onChanged),

                  Obx(()=>Switch(value: switchController.value.switchValue, onChanged:(value){
                    switchController.update((controller){
                      if(controller != null){
                        controller.switchValue =value;
                      }
                    });
                  }),

                  /*child: Switch(value: controller.switchValue.value, onChanged: (value){
                    switchValue =value;
                    setState(() {

                    });
                  }),*/
                )
              ],
            )
          ],
          ),
        ),
      ),
    );
  }
}
