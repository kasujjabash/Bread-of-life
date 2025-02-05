import 'package:flutter/material.dart';
import 'package:kjv/models/devotion.dart';
import 'package:kjv/pages/devotions_detail.dart';
import 'package:kjv/providers/devotion_provider.dart';
import 'package:provider/provider.dart';

class DevotionTile extends StatelessWidget {
  final Devotion devotion;
  final int index;

  const DevotionTile({super.key, required this.devotion, required this.index});

  @override
  Widget build(BuildContext context) {
    final devotionProvider = Provider.of<DevotionProvider>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DevotionDetails(devotionId: devotionProvider.devotions[index].id),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      devotion.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Scripture
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        devotion.scripture,
                        style: const TextStyle(fontSize: 16),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Date
                    Text(
                      devotion.date,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              // Thumbnail
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/quizz-banner.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 1.0),
        ],
      ),
    );
  }
}
