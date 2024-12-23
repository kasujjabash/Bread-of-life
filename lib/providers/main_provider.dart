import 'package:flutter/material.dart';
import 'package:kjv/models/book.dart';
import 'package:kjv/models/verse.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

// MainProvider class extends ChangeNotifier for state management

class MainProvider extends ChangeNotifier {
  // Controllers and Listeners for managing scroll positions and items
  ItemScrollController itemScrollController = ItemScrollController();
  ScrollOffsetController scrollOffsetController = ScrollOffsetController();
  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();

  // List to store Verse objects
  List<Verse> verses = [];

  // Method to add a Verse to the list and notify listeners
  void addVerse({required Verse verse}) {
    verses.add(verse);
    notifyListeners();
  }

  // List to store Book objects
  List<Book> books = [];

  // Method to add a Book to the list and notify listeners
  void addBook({required Book book}) {
    books.add(book);
    notifyListeners();
  }

  // Variable to store the current Verse
  Verse? currentVerse;

  // Method to update the current Verse and notify listeners
  void updateCurrentVerse({required Verse verse}) {
    currentVerse = verse;
    notifyListeners();
  }

  // Method to scroll to a specific index in the list and notify listeners
  void scrollToIndex({required int index}) {
    itemScrollController.scrollTo(
        index: index, duration: const Duration(milliseconds: 800));
    notifyListeners();
  }

  // List to store selected Verse objects
  List<Verse> selectedVerses = [];

  // Method to toggle the selection of a Verse and notify listeners
  void toggleVerse({required Verse verse}) {
    bool contains = selectedVerses.any((element) => element == verse);
    if (contains) {
      selectedVerses.remove(verse);
    } else {
      selectedVerses.add(verse);
    }
    notifyListeners();
  }

  // Method to clear the selected Verse list and notify listeners
  void clearSelectedVerses() {
    selectedVerses.clear();
    notifyListeners();
  }

//    //Open a Web URL
// Future<void> openWebUrl(BuildContext context) async {
//   final Uri url = Uri.parse('https://bashirkasujja.com/');
//   try {
//     if (await canLaunchUrl(url)) {
//       await launchUrl(url, mode: LaunchMode.externalApplication);
//     } else {
//       // Show error using Snackbar
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Could not launch $url')),
//       );
//     }
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//   }
// }
  Future<void> launchInBrowser(BuildContext context) async {
    final Uri toLaunch = Uri.parse('https://bashirkasujja.com/');

    try {
      if (!await launchUrl(
        toLaunch,
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception('Could not launch $toLaunch');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void dialPhoneNumber(BuildContext context) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+256707268485');

    try {
      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri);
      } else {
        // Show an error message if the phone number cannot be launched
        throw Exception('Could not launch $phoneUri');
      }
    } catch (e) {
      // Show the error to the user via a SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

// Send an Email
  Future<void> sendEmail(BuildContext context) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'kasujjabash80@mail.com',
      // query: 'subject=Test Email&body=Hello!', // Add subject and body
    );

    try {
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        // Show an error message if the email cannot be launched
        throw Exception('Could not launch $emailUri');
      }
    } catch (e) {
      // Show the error to the user via a SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
