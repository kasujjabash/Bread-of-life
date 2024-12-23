import 'package:flutter/material.dart';

class ContactsTile extends StatelessWidget {
  final String contacttitle;
  final String contactdetails;
  final IconData iconData;
  final Function()? onTap;
  const ContactsTile(
      {super.key,
      required this.contactdetails,
      required this.contacttitle,
      required this.iconData,
      required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: ListTile(
              leading: Icon(
                iconData,
                size: 30,
                color: Colors.blue.shade900,
              ),
              title: Text(
                contacttitle,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                contactdetails,
                style: const TextStyle(
                  fontSize: 19,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.blue.shade900,
              ),
            ),
          ),
          //divider
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
