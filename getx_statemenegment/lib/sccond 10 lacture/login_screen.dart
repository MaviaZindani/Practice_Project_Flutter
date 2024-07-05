import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_statemenegment/sccond%2010%20lacture/login_signup_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController logControl = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: logControl.emailController.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.teal)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: logControl.passwordController.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.teal)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return OutlinedButton(
                  onPressed: () {
                    logControl.loginapi();
                  },
                  child: logControl.isLoding.value
                      ? CircularProgressIndicator()
                      : Text('press'));
            })
          ],
        ),
      ),
    );
  }
}
