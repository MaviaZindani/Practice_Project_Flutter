import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenegment/first%2010%20lacture/home_screen.dart';
import 'package:getx_statemenegment/first%2010%20lacture/timer.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
          onPressed: () {
            Get.to(timer());
          },
          child: const Text('click to navigeta home screen')),
    ));
  }
}
