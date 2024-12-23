import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final Function()? onTap;
  const MyButton({super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
