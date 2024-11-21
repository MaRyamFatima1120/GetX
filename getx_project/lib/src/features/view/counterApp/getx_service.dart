

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view-model/counter_app _business_logic/getx_service_logic.dart';

class GetxServicePage extends StatefulWidget {
  const GetxServicePage({super.key});

  @override
  State<GetxServicePage> createState() => _GetxServicePageState();
}

class _GetxServicePageState extends State<GetxServicePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initService();
  }

  Future<void> initService() async{
  print("Start Service");
  
  await Get.putAsync<Service>(() async => await Service());
  print("All service Started");
  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'GetXService',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  ElevatedButton(
                onPressed: () {

                  //  controller.increment();


                  Get.find<Service>().increment();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(150, 50)),
                child: const Text("Click")),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {

          },
          child: const Icon(
            Icons.navigate_next,
            color: Colors.white,
          )),
    );

  }
}
