import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favourite_app_controller.dart';

class favouriteApp extends StatefulWidget {
  const favouriteApp({super.key});

  @override
  State<favouriteApp> createState() => _favouriteAppState();
}

class _favouriteAppState extends State<favouriteApp> {
Changefurit like = Get.put(Changefurit());
  List<String> furit = ['mango', 'apple', 'water melon', 'pine apple'];
  List<String> tempfurit = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('favoyrite app'),
        ),
        body: ListView.builder(
            itemCount: like.furit.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    like.favouriteColorChange(index);
                  },
                  title: Text(like.furit[index].toString()),
                  trailing: Obx(() => Icon(
                    Icons.favorite,
                    color:like.tempFurit.contains(like.furit[index].toString())
                        ? Colors.red[700]
                        : Colors.white,)
                  ),
                ),
              );
            }));
  }
}
