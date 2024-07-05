import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Changefurit extends GetxController {
  RxList<dynamic> furit = ['mango', 'apple', 'water melon', 'pine apple'].obs;
  RxList<dynamic> tempFurit = [].obs;

  favouriteColorChange(index) {
    if (tempFurit.contains(furit[index].toString())) {
      tempFurit.remove(furit[index].toString());
    }else{
      tempFurit.add(furit[index].toString());
    }
  }
}
