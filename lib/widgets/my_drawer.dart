import 'package:flutter/material.dart';
import 'package:kjv/pages/privacy_policy.dart';
import 'package:kjv/widgets/my_list_tile.dart';

import '../pages/about_us_page.dart';
import '../pages/contacts_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              //DrawerHearder
              DrawerHeader(
                child: Icon(Icons.menu_book_sharp,
                    size: 80, color: Colors.blue.shade900),
              ),

              //Contact us
              MyListTile(
                iconData: Icons.quiz,
                tiletitle: 'Bible Quiz',
                onTap: () {
                  // Pop the current window
                  Navigator.pop(context);

                  // Show a "Coming Soon" message in a dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          "Coming Soon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        content: const Text(
                          "The Bible Quiz feature is coming soon. Stay tuned!",
                          style: TextStyle(fontSize: 20),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text(
                              "OK",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),

              //Contact us
              MyListTile(
                iconData: Icons.phone,
                tiletitle: 'Contact Us',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the contact page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactsPage(),
                    ),
                  );
                },
              ),

              //Privacy policy
              MyListTile(
                iconData: Icons.privacy_tip,
                tiletitle: 'Privacy policy',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the contact page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy(),
                    ),
                  );
                },
              ),

              //About us
              MyListTile(
                iconData: Icons.info,
                tiletitle: 'About us',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the contact page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(),
                    ),
                  );
                },
              ),
            ],
          ),

          //developer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'Developed by Bashir Kasujja',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
