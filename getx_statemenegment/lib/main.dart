import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenegment/first%2010%20lacture/home_screen.dart';
import 'package:getx_statemenegment/first%2010%20lacture/timer.dart';
import 'package:getx_statemenegment/mvvm.dart/view/splash_screen.dart';
import 'package:getx_statemenegment/sccond%2010%20lacture/Favourite_app.dart';
import 'package:getx_statemenegment/sccond%2010%20lacture/camra_app.dart';
import 'package:getx_statemenegment/sccond%2010%20lacture/login_screen.dart';
import 'package:getx_statemenegment/sccond%2010%20lacture/second_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue,appBarTheme: AppBarTheme(backgroundColor: Colors.blue)),
      home: SplashScreen(),
    );
  }
}
