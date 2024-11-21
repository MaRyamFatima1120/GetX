
import 'package:flutter/material.dart';
import 'package:flutter_getx_with_mvvm/src/res/colors/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{
  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
    );
  }
  //You can work on Validation here
  static snackBar(String message,String title){
    //You can design it properly
    Get.snackbar(
      title,
      message
    );
  }
}