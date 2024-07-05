import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'camra_app_controller.dart';

class camraApp extends StatefulWidget {
  const camraApp({super.key});

  @override
  State<camraApp> createState() => _camraAppState();
}

class _camraAppState extends State<camraApp> {
  ImagePickerController mavia = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camra application'),
      ),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment:MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.blue,
                  backgroundImage: mavia.imagepath.isNotEmpty
                      ? FileImage(File(mavia.imagepath.toString()))
                      : null,
                ),
                TextButton(
                    onPressed: () {
                      mavia.getimage();
                    },
                    child: Text('click to pick'))
              ],
            )),
      ),
    );
  }
}
