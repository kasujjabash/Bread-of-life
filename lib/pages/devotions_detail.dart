import 'package:flutter/material.dart';

class DevotionDetails extends StatelessWidget {
  const DevotionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          foregroundColor: Colors.white,
          title: const Text('Devotion'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Banner image
              Image.asset(
                'assets/images/quizz-banner.jpg',
                fit: BoxFit.cover,
              ),

              const Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Title
                    const Text(
                      'Steadfast',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //Author
                    Text(
                      'By Bashir Kasujja',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //Dates
                    Text(
                      'Thursday 16 Jan, 2025',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    // Scripture
                    Text(
                      '''Bread of Life was created by Bashir Kasujja, a believer in God and a passionate, growing software developer.
          ''',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    // Explanation
                    Text(
                      '''Bread of Life was created by Bashir Kasujja, a believer in God and a passionate, growing software developer. Bashir is dedicated to using his talents to glorify God and share His Word with others through technology. Bashir is dedicated to using his talents to glorify God and share His Word with others through technology.Bread of Life was created by Bashir Kasujja, a believer in God and a passionate, growing software developer.''',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    //Prayer
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
