import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String tiletitle;
  final Function()? onTap;
  final IconData iconData;
  const MyListTile(
      {super.key,
      required this.iconData,
      required this.tiletitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.blue.shade900,
        ),
        title: Text(
          tiletitle,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
