import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_homescreen_controller.dart';

class secondHomeScreen extends StatefulWidget {
  const secondHomeScreen({super.key});

  @override
  State<secondHomeScreen> createState() => _secondHomeScreenState();
}

class _secondHomeScreenState extends State<secondHomeScreen> {
  final Swith swith = Get.put(Swith());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('homescreen'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                Obx(() => (Switch(
                    value: swith.notification.value,
                    onChanged: (value) {
                      swith.setnotification(value);
                    })))
              ],
            )
          ],
        ));
  }
}
