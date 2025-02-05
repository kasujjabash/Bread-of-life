import 'package:flutter/material.dart';
import 'package:kjv/models/devotion.dart';
import 'package:kjv/services/firebase_services.dart';

class DevotionProvider with ChangeNotifier {
  List<Devotion> _devotions = [];
  bool _isLoading = false;

  List<Devotion> get devotions => _devotions;
  bool get isLoading => _isLoading;

  Future<void> fetchDevotions() async {
    _isLoading = true;
    notifyListeners();

    try {
      _devotions = await FirebaseService().getDevotions();
    } catch (error) {
      throw error;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
