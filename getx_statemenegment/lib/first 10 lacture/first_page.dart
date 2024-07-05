import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenegment/first%2010%20lacture/second_page.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Get.bottomSheet(
                backgroundColor: Colors.white,

                Column(
                  children: [
                    ListTile(
                    onTap: () {
                      Get.to(secondPage());
                    },
                    title: Text('click to nagavite sceond screen'),
                                  ),
                                  ListTile(
                                    onTap: (){
                                      Get.changeTheme(ThemeData.light());
                                    },
                                    title: Text('click to change theme dark to light'),
                                  ),
                                  ListTile(
                                    onTap: (){
                                      Get.changeTheme(ThemeData.dark());
                                    },
                                    title: Text('click to change theme light to dark'),
                                  ),
                  ],
                ),
              
              );
            },
            child: const Text('click to open bottom sheet')),
      ),
    );
  }
}
