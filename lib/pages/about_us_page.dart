import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: const Text('About Bread of Life'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //sized box
              SizedBox(
                height: 10,
              ),
              Text(
                '''Welcome to Bread of Life, a Bible app inspired by the words of Jesus: "Man shall not live by bread alone, but by every word that proceedeth out of the mouth of God." – Matthew 4:4.\n\nThis app brings the timeless truth of the King James Version (KJV) to your fingertips, providing a simple and accessible way to read and reflect on God’s Word. With its clear design and focus on scripture, Bread of Life helps you stay connected to the source of spiritual nourishment wherever you go.\n\nBread of Life makes it easy to share God’s Word with those around you. Copy any verse and share it instantly with your friends and loved ones via text, social media, or other platforms. Spread inspiration, encouragement, and truth with just a tap.
      ''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              Text('About the developer',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              Text(
                '''Bread of Life was created by Bashir Kasujja, a believer in God and a passionate, growing software developer. Bashir is dedicated to using his talents to glorify God and share His Word with others through technology.
        ''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
