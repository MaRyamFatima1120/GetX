import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view-model/image_picker_controller.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({super.key});

  @override
  State<ImagePickerClass> createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {

  ImagePickerClassController controller =Get.put(ImagePickerClassController());
  @override
  Widget build(BuildContext context) {
    print("Build Image Picker");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Image Picker",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/seventh");
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Stack(
            clipBehavior: Clip.none,
              children: [

                Center(
                  child: CircleAvatar(
                    radius:100,
                    backgroundImage:controller.imagePath.isNotEmpty? FileImage(File(controller.imagePath.toString())):null,
                  ),
                ),
                Positioned(
                  bottom: 0.0, // Adjust the `top` position as needed
                  right:100.0, // Adjust the `right` position as needed
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        controller.getImage();
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

              ],
            );
          })
        ],
      ),
    );
  }
}


