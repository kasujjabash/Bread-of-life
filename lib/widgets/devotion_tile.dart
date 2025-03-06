import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DevotionTile extends StatelessWidget {
  final String title;
  final String message;
  final Timestamp timestamp;

  const DevotionTile({
    Key? key,
    required this.title,
    required this.message,
    required this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message, maxLines: 2, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 5),
            Text(
              'Date: ${DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch)}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
