import 'package:flutter/material.dart';

// ignore: must_be_immutable
class roundButton extends StatelessWidget {
  final title;
  Color color;
  final VoidCallback onTab;
  final isLoading;
  roundButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onTab,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: onTab,
          child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3.0,
                      )
                    : Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
              )),
        ),
      ],
    );
  }
}
