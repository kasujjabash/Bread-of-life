import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kjv/providers/main_provider.dart';
import 'package:kjv/widgets/contacts_tile.dart';
import 'package:provider/provider.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, mainProvider, child) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: Theme.of(context).colorScheme.surface,
          systemNavigationBarIconBrightness:
              Theme.of(context).brightness == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark,
        ),
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue.shade900,
            title: const Text('Contact Us'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'How can we help you?',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      //sizedbox
                      const SizedBox(
                        height: 10,
                      ),
                      //text
                      const Text(
                        'You can reach out to us and we will respond, call us if you want to us to pray for you, or Email us your Feed back about our app.',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),

                      ContactsTile(
                        onTap: () {
                          mainProvider.dialPhoneNumber(context);
                        },
                        iconData: Icons.phone,
                        contacttitle: 'Call us',
                        contactdetails: '+256 707 268485',
                      ),

                      ContactsTile(
                        onTap: () {
                          mainProvider.sendEmail(context);
                        },
                        iconData: Icons.email,
                        contacttitle: 'Email Us ',
                        contactdetails: 'kasujjabash80@gmail.com',
                      ),
                    ],
                  ),

                  //Contact the developer
                  Column(
                    children: [
                      //text
                      const Text(
                        'For Business, Mobile App development, Website development and designing, Collaboration on a project, or want to ask any question,\n\nYou can always contact our developer through his website.',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),

                      //website
                      ContactsTile(
                        onTap: () {
                          mainProvider.launchInBrowser(context);
                        },
                        iconData: Icons.computer,
                        contacttitle: "Developer's website",
                        contactdetails: 'bashirkasujja.com',
                      ),

                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
