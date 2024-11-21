import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiClassDisplay extends StatefulWidget {
  const ApiClassDisplay({super.key});

  @override
  State<ApiClassDisplay> createState() => _ApiClassDisplayState();
}

class _ApiClassDisplayState extends State<ApiClassDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: (){
                Get.toNamed("/");
        },icon:const Icon(Icons.arrow_back_ios_rounded),
        ),

        title:const Text("MakeUp Api",style: TextStyle(fontSize: 20,color: Colors.white),),
        iconTheme:const IconThemeData(color: Colors.white70),


      ),

    );
  }
}
