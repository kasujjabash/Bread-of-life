import 'package:flutter/material.dart';
import 'package:kjv/pages/devotions.dart';
import 'package:kjv/pages/privacy_policy.dart';
import 'package:kjv/widgets/my_list_tile.dart';
import 'package:provider/provider.dart';
import '../pages/about_us_page.dart';
import '../pages/contacts_page.dart';
import '../pages/quiz_page.dart';
import '../providers/main_provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context,
        listen: false); //instance of MainProvider

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

              //devotions
              MyListTile(
                iconData: Icons.menu_book_sharp,
                tiletitle: 'Devotions',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the devotions page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Devotions(),
                    ),
                  );
                },
              ),
              //Contact us
              MyListTile(
                iconData: Icons.quiz,
                tiletitle: 'Bible Quiz',
                onTap: () {
                  // Pop the current window
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizPage(),
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

              //Feedback
              MyListTile(
                iconData: Icons.feedback,
                tiletitle: 'Feedback',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the contact page
                  mainProvider.feedBackForm(context);
                },
              ),

              //Privacy policy
              MyListTile(
                iconData: Icons.privacy_tip,
                tiletitle: 'Privacy policy',
                onTap: () {
                  //pop the window
                  Navigator.pop(context);
                  //Go to the privacy policy page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy(),
                    ),
                  );
                },
              ),
            ],
          ),

          //developer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: GestureDetector(
              onTap: () {
                mainProvider.launchInBrowser(context);
              },
              child: Text(
                'Developed by Bashir Kasujja',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
