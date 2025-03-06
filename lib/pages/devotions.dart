import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DevotionScreen extends StatelessWidget {
  const DevotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devotions'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Lottie.asset('assets/animation/comming-soon.json'),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ContactsPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'Back To Bible',
                    style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
