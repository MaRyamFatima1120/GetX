import 'package:flutter/material.dart';
import 'package:flutter_getx_with_mvvm/src/utils/utils.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

        Utils.toastMessage("Email Hint".tr);

       //throw InternetException('This is Maryam Fatima');

      },
      child:const Icon(Icons.signal_cellular_connected_no_internet_0_bar),
      ),

    );
  }
}
