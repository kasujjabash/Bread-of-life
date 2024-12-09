import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: const Text('Privacy Policy'),
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
              //Introduction Heading
              Text('Introduction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              //welcoming text
              Text(
                '''Welcome to Bread of  Life bible app. We are committed to protecting your privacy. This Privacy Policy explains how we handle any information when you use our app.''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              //sized box
              SizedBox(
                height: 15,
              ),
              Text('Information Collection',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              Text(
                '''We do not collect, store, or process any personal data from users. Our app is designed to display Bible verses from JSON files stored in the app's assets folder.\n\nSince we do not collect any personal data, we do not use your information in any way. The app operates solely on the data provided within its own resources and does not require internet access or interaction with external services.''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              //Sized Box
              SizedBox(
                height: 15,
              ),
              Text('Data Security',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              //Text about data security
              Text(
                '''We take the security of our app seriously. Since no personal data is collected, there is no data to secure.\nWe ensure that our app does not transmit any user information or data to external servers.''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),

              //Sized Box
              SizedBox(
                height: 15,
              ),
              Text('Third-Party Services',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              //Text about data security
              Text(
                '''Our app does not use any third-party services that collect, store, or process personal data. We do not include any analytics, advertising, or tracking services.''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),

              //Sized Box
              SizedBox(
                height: 15,
              ),
              Text('Changes to This Privacy Policy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              //Text about data security
              Text(
                '''We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes.''',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),

              //Sized Box
              SizedBox(
                height: 15,
              ),
              Text('Contact Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //sized box
              SizedBox(
                height: 10,
              ),

              //Text about data security
              Text(
                '''If you have any questions about this Privacy Policy, please contact us at:\n\n- kasujjabash80@gmail.com\n\nThank you for using The Bread of Life Be Blessed.''',
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
