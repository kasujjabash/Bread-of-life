import 'package:flutter/material.dart';

import '../widgets/devotion_tile.dart';

class Devotions extends StatelessWidget {
  const Devotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: const Text('Devotion'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //devotion tile
            DevotionTile(),
            DevotionTile()
          ],
        ),
      ),
    );
  }
}
