import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'timer_controller.dart';

class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  final TimerController sec = Get.put(TimerController());

  @override
  // void initState() {
  //   Timer.periodic(Duration(seconds: 1), (timer){
  //     sec.secondChange();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('timer'),
        ),
        body: Center(child: Obx(() => Text(sec.cont.toString()))));
  }
}
