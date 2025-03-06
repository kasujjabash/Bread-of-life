import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DevotionProvider with ChangeNotifier {
  final CollectionReference _devotionsCollection =
      FirebaseFirestore.instance.collection('devotions');

  // Expose the stream to UI
  Stream<QuerySnapshot> get devotionsStream =>
      _devotionsCollection.orderBy('timestamp', descending: true).snapshots();

  List<Map<String, dynamic>> _devotions = [];

  List<Map<String, dynamic>> get devotions => _devotions;

  DevotionProvider() {
    fetchDevotions();
  }

  void fetchDevotions() {
    _devotionsCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .listen((snapshot) {
      _devotions = snapshot.docs.map((doc) {
        return {
          'title': doc['title'] ?? '',
          'description': doc['description'] ?? '',
          'prayer': doc['prayer'] ?? '',
          'scripture': doc['scripture'] ?? '',
          'timestamp': doc['timestamp'],
        };
      }).toList();
      notifyListeners(); // Notify listeners of updates
    });
  }
}
