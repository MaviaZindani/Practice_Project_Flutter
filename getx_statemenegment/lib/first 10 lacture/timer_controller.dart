import 'dart:async';

import 'package:get/get.dart';

class TimerController extends GetxController {
  RxInt cont = 1.obs;

  secondChange() {
    cont.value++;

    return cont.value;
  }
}
