import 'package:flutter/material.dart';
import 'package:kjv/pages/devotions_detail.dart';

class DevotionTile extends StatelessWidget {
  const DevotionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DevotionDetails()));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                // Ensures the column text does not overflow
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      'Steadfast',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold, // Improves text emphasis
                      ),
                    ),
                    // Sized box for spacing
                    const SizedBox(height: 15),
                    // Scripture
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 8.0), // Avoids overlap with image
                      child: Text(
                        '1 Thessalonians 1:1: Paul, Silvanus, and Timotheus, '
                        'unto the church of the Thessalonians which is in God the Father '
                        'and in the Lord Jesus Christ: Grace be unto you, and peace, '
                        'from God our Father, and the Lord Jesus Christ.',
                        style: TextStyle(
                            fontSize: 16), // Added a default font size
                        maxLines: 3, // Limits the text display
                        overflow:
                            TextOverflow.ellipsis, // Adds ellipsis if overflow
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //  date/timestamp
                    Text(
                      'Thursday 17, 2024',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // Thumbnail
              ClipRRect(
                // Ensures rounded corners if needed
                borderRadius: BorderRadius.circular(8.0), // Adds some rounding
                child: Image.asset(
                  'assets/images/quizz-banner.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100, // Ensures a square thumbnail
                ),
              ),
            ],
          ),
          //sized box
          const SizedBox(
            height: 10,
          ),
          //divider
          const Divider(thickness: 1.0),
        ],
      ),
    );
  }
}
