import 'package:get/get.dart';

class Swith extends GetxController {
  RxBool notification = false.obs;

  setnotification(value) {
    notification.value = value;
  }
}
