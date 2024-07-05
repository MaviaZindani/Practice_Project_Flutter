import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenegment/first%2010%20lacture/first_page.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('getx_tutorial'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Get.defaultDialog(
                  title: 'wont to go next screen',
                  content: Text('my nam is mavia'),
                  onConfirm: () {
                    Get.to(firstPage());
                  },
                  onCancel: () {
                    Get.back();
                  });
            },
            child: Text('click to swich first screen')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("mavia Zinadani", "you'r login",
              icon: const Icon(Icons.add),
              onTap: (snap) {},
              backgroundColor: Colors.black,
              colorText: Colors.white,
              mainButton:
                  TextButton(onPressed: () {}, child: const Text("click")),
              snackPosition: SnackPosition.BOTTOM);
        },
        child: const Icon(Icons.access_alarm),
      ),
    );
  }
}
