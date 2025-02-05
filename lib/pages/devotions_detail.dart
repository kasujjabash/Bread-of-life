import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DevotionDetails extends StatelessWidget {
  final String devotionId;

  const DevotionDetails({super.key, required this.devotionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: const Text('Devotion'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('devotions').doc(devotionId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('Devotion not found'));
          }

          var devotion = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Banner image
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/quizz-banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        devotion['title'] ?? 'No Title',
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      // Scripture
                      Text(
                        devotion['scripture'] ?? 'No Scripture Provided',
                        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      // Explanation
                      Text(
                        devotion['description'] ?? 'No Explanation Available',
                        style: const TextStyle(fontSize: 19),
                      ),
                      const SizedBox(height: 15),
                      // Prayer
                      Text(
                        devotion['prayer'] ?? 'No Prayer Added',
                        style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
