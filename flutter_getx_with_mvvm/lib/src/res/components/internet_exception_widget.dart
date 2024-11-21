

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/app_color.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Icon(Icons.cloud_off,color:AppColor.blackColor),
          Text("internet_exception".tr),

        ],
      ),
    );
  }
}
