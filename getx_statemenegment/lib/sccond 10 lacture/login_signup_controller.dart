import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoding = false.obs;

  Future loginapi() async {
    isLoding.value = true;
    try {
      final url = Uri.parse("https://reqres.in/api/login");
      final response = await post(url, body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);

      if (response.statusCode == 200) {
      isLoding.value = false;
        Get.snackbar('login', 'success full');
      } else {
        isLoding.value = false;
        Get.snackbar('Login Faild', 'password wrong');
      }
    } catch (e) {
      isLoding.value = false;
      Get.snackbar('Exeption', e.toString());
    }
  }
}
