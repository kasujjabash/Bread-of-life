import 'package:flutter/material.dart';
import 'package:kjv/providers/devotion_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/devotion_tile.dart';

class Devotions extends StatelessWidget {
  const Devotions({super.key});

  @override
  Widget build(BuildContext context) {
    final devotionProvider = Provider.of<DevotionProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          foregroundColor: Colors.white,
          title: const Text('Devotion'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: devotionProvider.devotions.length,
              itemBuilder: (context, index) {
                return DevotionTile(
                  devotion: devotionProvider.devotions[index],
                  index: index,
                );
              },
            ))
          ],
        )

        // const Padding(
        //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        //   child: const Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       //devotion tile
        //       DevotionTile(),
        //       DevotionTile()
        //     ],
        //   ),
        // ),
        );
  }
}
