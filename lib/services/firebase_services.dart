import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kjv/models/devotion.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Devotion>> getDevotions() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('devotions').orderBy('date', descending: true).get();
      return snapshot.docs
          .map((doc) => Devotion.fromMap(doc.id, doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Error fetching devotions: $e');
    }
  }
}
