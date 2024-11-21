import  'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view-model/counter_app _business_logic/getx_worker_logic.dart';

class GetxWorker extends StatefulWidget {
  const GetxWorker({super.key});

  @override
  State<GetxWorker> createState() => _GetxWorkerState();
}

class _GetxWorkerState extends State<GetxWorker> {

  //WorkerController controller =Get.put(WorkerController(),permanent: true,tag: 'put');
  //WorkerController controller =Get.lazyPut<WorkerController>(()=>WorkerController(),fenix: true);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //
    Get.lazyPut(()=>WorkerController());
//Get.create(()=>WorkerController());

  }
  @override
  Widget build(BuildContext context) {
   WorkerController controller =Get.find<WorkerController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.cyan,
        title:const Text('GetX Worker',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(() => Text(
                "Counter App:${controller.count}",
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ))),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {

              //  controller.increment();


                Get.find<WorkerController>().increment();
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
          backgroundColor: Colors.cyan,
          onPressed: () {
            Get.offNamed('/fifth');
          },
          child: const Icon(Icons.navigate_next,color: Colors.white,)),
    );
  }
}
