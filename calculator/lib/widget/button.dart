import 'package:calculator/utlis/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.titel, this.color=dimblackcolor,required this.onPress});
    final String titel;
    final Color color;
    final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPress,
      child: Container(
        height: 68,
        width: 68,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          titel,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}


class Button2 extends StatelessWidget {
 const Button2({super.key, required this.titel, this.color=dimblackcolor,required this.onPress});

  final String titel;
  final color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPress,
      child: Container(
        height: 68,
        width: 170,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          titel,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}