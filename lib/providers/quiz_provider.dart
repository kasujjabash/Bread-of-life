import 'package:flutter/widgets.dart';
import 'package:kjv/models/quiz.dart';

class QuizProvider extends ChangeNotifier {
  final List<Quiz> _quizzes = [
    Quiz(
      question:
          'In the Gospel of Mark, how does the Virgin Mary learn of her pregnancy?',
      options: [
        "There is no virgin birth in the Gospel of Mark.",
        'From the angel Gabriel',
        'Joseph learns of the news in a dream.',
        'Mary has a vision.'
      ],
      correctAnswerIndex: 0,
      explanation:
          "You're Right, There is no virgin birth in the Gospel of Mark.",
      bibleVerse:
          'Matthew 1:20-21 and Luke 1:26-31, The details about the virgin birth and how Mary learns of her pregnancy are found in the Gospels of Matthew (through Joseph’s dream) and Luke (through the angel Gabriel).',
    ),
    Quiz(
      question: 'Of what wood was Noah’s Ark made?',
      options: ['Gopher wood', 'Acacia wood', 'Cedar of Lebanon', 'Carob wood'],
      correctAnswerIndex: 0,
      explanation:
          'You got it right! The Ark was made of gopher wood. Genesis 6:14',
      bibleVerse: 'Read Genesis 6:14 to get the answer.',
    ),
    Quiz(
      question: 'Who watched as Moses floated in the basket down the Nile?',
      options: [
        "Pharaoh's daughter",
        'The Pharaoh',
        'His Sister Miriam',
        'The Israelites'
      ],
      correctAnswerIndex: 2,
      explanation:
          "Miriam, Moses' sister, was indeed the one who watched as Moses floated in the basket down the Nile. Exodus 2:4",
      bibleVerse: 'Read Exodus 2:4 to get the answer.',
    ),
    Quiz(
      question: 'What was our Savior’s last command to his disciples?',
      options: [
        "Help widows and orphans",
        'Love others',
        'Make disciples of all the nations and baptize them',
        'Honor the Sabbath'
      ],
      correctAnswerIndex: 2,
      explanation:
          "Yes, Jesus' last command to his disciples was to make disciples of all the nations and baptize them. Matthew 28:19",
      bibleVerse: 'Read Matthew 28:19 to get the answer.',
    ),
    Quiz(
      question: 'Of whom did our Savior say, “I will make you fishers of men?',
      options: [
        "Of Matthew, Peter, and Simeon",
        'Of James, Peter, and Andrew',
        'Of Thomas, Matthew, and Peter',
        'Of Simeon, Peter, and Andrew'
      ],
      correctAnswerIndex: 3,
      explanation:
          "I agree, Jesus said to Peter, and Andrew 'I will make fisher of men. Matthew 4:19 and Mark 1:17",
      bibleVerse: 'Try reading Matthew 4:19 and Mark 1:17 to get the answer.',
    ),
    Quiz(
      question: 'Where did Moses receive the Ten Commandments?',
      options: ["Mount Horeb", 'Mount Ararat', 'Mount Sinai', 'Mount Zion'],
      correctAnswerIndex: 2,
      explanation:
          "Yes, Moses received the Ten Commandments on Mount Sinai. Exodus 19:20",
      bibleVerse: 'Reading Exodus 19:20 to get the answer.',
    ),
    Quiz(
      question:
          'Which object did Aaron’s staff miraculously transform into before Pharaoh?',
      options: ["A sword", 'A flame', 'A river', 'A snake'],
      correctAnswerIndex: 3,
      explanation:
          "That's right! Aaron’s staff became a snake as a sign of God’s power. Exodus 7:10-12",
      bibleVerse: 'Reading Exodus 7:10-12 to get the answer.',
    ),
    Quiz(
      question:
          'What was the occupation of the man who climbed a sycamore tree to see Jesus?',
      options: ["Shepherd", 'Tax collector', 'Carpenter', 'Fisherman'],
      correctAnswerIndex: 1,
      explanation:
          "Spot on! Zacchaeus was a tax collector who sought to see Jesus. Luke 19:1-10.",
      bibleVerse: 'Check out Luke 19:1-10 for the full story.',
    ),
    Quiz(
      question:
          'When Jesus was tempted in the wilderness, how did He respond to Satan?',
      options: [
        "He remained silent.",
        'He performed a miracle.',
        'He quoted Scripture.',
        'He prayed aloud.'
      ],
      correctAnswerIndex: 2,
      explanation:
          "Absolutely! Jesus defeated temptation by quoting Scripture. Matthew 4:1-11.",
      bibleVerse: 'Try reading Matthew 4:1-11 to see how Jesus responded.',
    ),
    Quiz(
      question:
          'Which prophet confronted King David about his sin with Bathsheba?',
      options: ["Isaiah", "Elijah", "Nathan", "Jeremiah"],
      correctAnswerIndex: 2,
      explanation:
          "Correct! Nathan confronted David about his sin with Bathsheba. 2 Samuel 12:1-15.",
      bibleVerse: 'Read 2 Samuel 12:1-15 to find the full story.',
    ),
    Quiz(
      question: 'What did Jesus say is the greatest commandment?',
      options: [
        "Love your neighbor as yourself.",
        "Keep the Sabbath holy.",
        "Love the Lord your God with all your heart, soul, and mind.",
        "Do not murder."
      ],
      correctAnswerIndex: 2,
      explanation:
          "Exactly! Loving God with all your heart is the greatest commandment. Matthew 22:37-38.",
      bibleVerse:
          'Refer to Matthew 22:37-38 to understand the greatest commandment.',
    ),
    Quiz(
      question: 'Who said, “Am I my brother’s keeper?”',
      options: ["Cain", "Abel", "Noah", "Esau"],
      correctAnswerIndex: 0,
      explanation:
          "Correct! Cain uttered this after God questioned him about Abel. Genesis 4:9.",
      bibleVerse: 'Read Genesis 4:9 for the context of this statement.',
    ),
    Quiz(
      question:
          'What was the name of the man who fell asleep during Paul’s long sermon and fell out of a window?',
      options: ["Timothy", "Eutychus", "Silas", "Barnabas"],
      correctAnswerIndex: 1,
      explanation:
          "That’s right! Eutychus fell asleep during Paul’s sermon. Acts 20:9.",
      bibleVerse: 'Check Acts 20:9 to learn about this event.',
    ),
    Quiz(
      question: 'Which fruit of the Spirit is listed first in Galatians 5?',
      options: ["Peace", "Joy", "Love", "Patience"],
      correctAnswerIndex: 2,
      explanation:
          "Perfect! Love is listed as the first fruit of the Spirit. Galatians 5:22.",
      bibleVerse: 'Find the fruits of the Spirit in Galatians 5:22-23.',
    ),
    Quiz(
      question:
          'In Revelation, how many churches did John address in his vision?',
      options: ["Three", "Seven", "Ten", "Twelve"],
      correctAnswerIndex: 1,
      explanation:
          "Yes, John wrote to seven churches as directed by God. Revelation 2-3.",
      bibleVerse: 'Discover the messages to the churches in Revelation 2-3.',
    ),
    Quiz(
      question:
          'What unusual thing did God make appear on the ground to feed the Israelites in the wilderness?',
      options: ["Honey", "Quail", "Manna", "Figs"],
      correctAnswerIndex: 2,
      explanation:
          "Yes! God provided manna from heaven to sustain the Israelites. Exodus 16:15.",
      bibleVerse: 'Explore Exodus 16 to learn about God’s provision.',
    ),
    Quiz(
      question:
          'Who was the woman who saved her family by hiding Israelite spies and hanging a scarlet cord in her window?',
      options: ["Ruth", "Rahab", "Esther", "Deborah"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Rahab’s faith and courage saved her family. Joshua 2:17-21.",
      bibleVerse: 'Look into Joshua 2:17-21 to discover the answer.',
    ),
    Quiz(
      question:
          'Who was the first king of Israel, anointed by the prophet Samuel?',
      options: ["David", "Saul", "Solomon", "Samuel"],
      correctAnswerIndex: 3,
      explanation:
          "That's correct! Saul was the first king of Israel. 1 Samuel 10:1.",
      bibleVerse: 'Read 1 Samuel 10:1 to find the answer.',
    ),
    Quiz(
      question: 'Which book in the Bible tells the story of creation?',
      options: ["Genesis", "Exodus", "Psalms", "Revelation"],
      correctAnswerIndex: 0,
      explanation:
          "Absolutely! The creation story is found in Genesis. Genesis 1:1.",
      bibleVerse: 'Explore Genesis 1:1 to learn more.',
    ),
    Quiz(
      question: 'What did Noah build to survive the flood?',
      options: ["A tent", "A house", "An ark", "A boat"],
      correctAnswerIndex: 2,
      explanation:
          "Exactly! Noah built an ark to save himself, his family, and the animals. Genesis 6:14.",
      bibleVerse: 'Check out Genesis 6:14 for the full story.',
    ),
    Quiz(
      question:
          'Who was swallowed by a great fish after attempting to flee from God’s command?',
      options: ["Elijah", "Jonah", "Moses", "Daniel"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Jonah was swallowed by a great fish after fleeing God’s command. Jonah 1:17.",
      bibleVerse: 'Read Jonah 1:17 for the complete account.',
    ),
    Quiz(
      question: 'What was the name of the disciple who betrayed Jesus?',
      options: ["Peter", "Thomas", "Judas", "James"],
      correctAnswerIndex: 2,
      explanation:
          "Yes! Judas betrayed Jesus for thirty pieces of silver. Matthew 26:14-16.",
      bibleVerse: 'Look into Matthew 26:14-16 to understand the betrayal.',
    ),
    Quiz(
      question: 'What miracle did Jesus perform at the wedding in Cana?',
      options: [
        "He healed a blind man.",
        "He turned water into wine.",
        "He walked on water.",
        "He raised Lazarus."
      ],
      correctAnswerIndex: 1,
      explanation:
          "Right! Jesus turned water into wine at the wedding in Cana. John 2:1-11.",
      bibleVerse: 'Check John 2:1-11 to read about this miracle.',
    ),
    Quiz(
      question: 'Which apostle is known as the "doubting" apostle?',
      options: ["John", "Thomas", "Peter", "Matthew"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Thomas doubted Jesus' resurrection until he saw Him. John 20:24-29.",
      bibleVerse: 'Read John 20:24-29 to discover why he is called "doubting".',
    ),
    Quiz(
      question:
          'Which king asked God for wisdom rather than wealth or long life?',
      options: ["David", "Solomon", "Hezekiah", "Josiah"],
      correctAnswerIndex: 1,
      explanation:
          "Exactly! Solomon asked God for wisdom, and God granted it. 1 Kings 3:5-14.",
      bibleVerse:
          'Read 1 Kings 3:5-14 to learn about Solomon’s request for wisdom.',
    ),
    Quiz(
      question:
          'Who was swallowed by a great fish and later preached to the city of Nineveh?',
      options: ["Jonah", "Elijah", "Isaiah", "Nehemiah"],
      correctAnswerIndex: 0,
      explanation:
          "Correct! Jonah was swallowed by a great fish and went on to preach repentance in Nineveh. Jonah 1:17.",
      bibleVerse:
          'Check Jonah 1:17 to read about Jonah’s journey inside the fish.',
    ),
    Quiz(
      question:
          'Which book in the Bible is considered the "book of songs" or "praises"?',
      options: ["Psalms", "Proverbs", "Ecclesiastes", "Isaiah"],
      correctAnswerIndex: 0,
      explanation:
          "Yes! The book of Psalms is a collection of songs and praises. Psalms 150:1-6.",
      bibleVerse:
          'Read Psalms 150:1-6 to experience some of the praises in the book of Psalms.',
    ),
    Quiz(
      question: 'What did God create on the second day of creation?',
      options: ["Light", "The Sun and the Moon", "Sky and Sea", "Animals"],
      correctAnswerIndex: 2,
      explanation:
          "Exactly! On the second day, God created the sky and separated it from the waters. Genesis 1:6-8.",
      bibleVerse:
          'Check Genesis 1:6-8 to read about God’s creation on the second day.',
    ),
    Quiz(
      question:
          'Which disciple denied Jesus three times before the rooster crowed?',
      options: ["James", "Peter", "John", "Thomas"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Peter denied Jesus three times before the rooster crowed. Luke 22:61-62.",
      bibleVerse: 'Read Luke 22:61-62 to find out about Peter’s denial.',
    ),
    Quiz(
      question:
          'Who was the prophet that challenged the prophets of Baal on Mount Carmel?',
      options: ["Elijah", "Elisha", "Moses", "Samuel"],
      correctAnswerIndex: 0,
      explanation:
          "Yes! Elijah confronted the prophets of Baal on Mount Carmel. 1 Kings 18:20-40.",
      bibleVerse:
          'Read 1 Kings 18:20-40 for the dramatic confrontation on Mount Carmel.',
    ),
    Quiz(
      question:
          'Which apostle is known for doubting Jesus’ resurrection until he saw Him with his own eyes?',
      options: ["Thomas", "Peter", "James", "John"],
      correctAnswerIndex: 0,
      explanation:
          "Exactly! Thomas doubted and said he would not believe until he saw Jesus. John 20:24-29.",
      bibleVerse:
          'Read John 20:24-29 for the story of Thomas’s doubt and belief.',
    ),
    Quiz(
      question: 'Which king wrote the book of Ecclesiastes?',
      options: ["David", "Solomon", "Hezekiah", "Asa"],
      correctAnswerIndex: 1,
      explanation:
          "Yes! King Solomon is traditionally credited with writing the book of Ecclesiastes. Ecclesiastes 1:1.",
      bibleVerse: 'Check Ecclesiastes 1:1 to see the author’s introduction.',
    ),
    Quiz(
      question:
          'Which woman was turned into a pillar of salt after looking back at Sodom and Gomorrah?',
      options: ["Sarah", "Rebekah", "Lot’s Wife", "Hagar"],
      correctAnswerIndex: 2,
      explanation:
          "Correct! Lot’s wife looked back at Sodom and Gomorrah and was turned into a pillar of salt. Genesis 19:26.",
      bibleVerse: 'Read Genesis 19:26 to learn about the fate of Lot’s wife.',
    ),
    Quiz(
      question:
          'Who was the first person to be called a "Christian" in the Bible?',
      options: ["Paul", "Peter", "Barnabas", "Jesus"],
      correctAnswerIndex: 2,
      explanation:
          "That’s right! Barnabas is the first person called a Christian in the Bible. Acts 11:26.",
      bibleVerse:
          'Check Acts 11:26 to find the first mention of the term "Christian".',
    ),
    Quiz(
      question:
          'Who was the last judge of Israel before the monarchy was established?',
      options: ["Samuel", "Gideon", "Deborah", "Samson"],
      correctAnswerIndex: 0,
      explanation:
          "Yes! Samuel was the last judge of Israel before the people asked for a king. 1 Samuel 8:5-7.",
      bibleVerse: 'Read 1 Samuel 8:5-7 to see how Israel asked for a king.',
    ),
    Quiz(
      question: 'What is the shortest verse in the Bible?',
      options: [
        "Jesus wept.",
        "God is love.",
        "The Lord is my shepherd.",
        "In the beginning God created the heavens and the earth."
      ],
      correctAnswerIndex: 0,
      explanation:
          "Correct! 'Jesus wept.' is the shortest verse in the Bible. John 11:35.",
      bibleVerse: 'Check John 11:35 for the shortest verse in the Bible.',
    ),
    Quiz(
      question:
          'Which woman was known for her beauty and saved the Jewish people in Persia?',
      options: ["Esther", "Ruth", "Deborah", "Miriam"],
      correctAnswerIndex: 0,
      explanation:
          "Yes! Esther was a queen who saved the Jewish people in Persia. Esther 4:14.",
      bibleVerse:
          'Read Esther 4:14 to learn about Esther’s role in saving her people.',
    ),
    Quiz(
      question:
          'How many plagues did God send upon Egypt before Pharaoh let the Israelites go?',
      options: ["Seven", "Ten", "Twelve", "Twenty"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! God sent ten plagues upon Egypt. Exodus 7:14-12:30.",
      bibleVerse:
          'Check Exodus 7:14-12:30 for the detailed account of the plagues.',
    ),
    Quiz(
      question:
          'Which king was known for his wisdom and wealth, building the temple in Jerusalem?',
      options: ["David", "Solomon", "Hezekiah", "Josiah"],
      correctAnswerIndex: 1,
      explanation:
          "Exactly! Solomon is known for his wisdom and wealth, and he built the temple. 1 Kings 6:1-14.",
      bibleVerse:
          'Read 1 Kings 6:1-14 to learn about the construction of Solomon’s temple.',
    ),
    Quiz(
      question:
          'Which New Testament book focuses on love as the greatest Christian virtue?',
      options: ["Romans", "1 Corinthians", "Ephesians", "Galatians"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! 1 Corinthians 13 highlights love as the greatest virtue. 1 Corinthians 13:13.",
      bibleVerse:
          'Check 1 Corinthians 13:13 to read about the importance of love.',
    ),
    Quiz(
      question: 'What did Jesus turn into wine at a wedding in Cana?',
      options: ["Water", "Oil", "Bread", "Fish"],
      correctAnswerIndex: 0,
      explanation:
          "Exactly! Jesus turned water into wine at the wedding in Cana. John 2:1-11.",
      bibleVerse:
          'Read John 2:1-11 to see the miracle of water turning into wine.',
    ),
    Quiz(
      question: 'Which of the following was not one of the twelve apostles?',
      options: ["Luke", "John", "Peter", "James"],
      correctAnswerIndex: 0,
      explanation:
          "Correct! Luke was not one of the twelve apostles, though he wrote the Gospel of Luke. Luke 1:1-4.",
      bibleVerse:
          'Check Luke 1:1-4 to learn about the author of the Gospel of Luke.',
    ),
    Quiz(
      question: 'What was the first miracle performed by Jesus?',
      options: [
        "Healing a blind man",
        "Raising the dead",
        "Turning water into wine",
        "Feeding 5000 people"
      ],
      correctAnswerIndex: 2,
      explanation:
          "Yes! The first miracle of Jesus was turning water into wine at the wedding in Cana. John 2:1-11.",
      bibleVerse: 'Read John 2:1-11 to find out about Jesus’ first miracle.',
    ),
    Quiz(
      question:
          'Which prophet confronted King Ahab and Queen Jezebel about their idolatry?',
      options: ["Elijah", "Isaiah", "Ezekiel", "Jeremiah"],
      correctAnswerIndex: 0,
      explanation:
          "Correct! Elijah confronted King Ahab and Queen Jezebel. 1 Kings 18:17-18.",
      bibleVerse:
          'Check 1 Kings 18:17-18 for the story of Elijah confronting Ahab and Jezebel.',
    ),
    Quiz(
      question:
          'Which disciple is known for being a tax collector before following Jesus?',
      options: ["Matthew", "Mark", "Luke", "John"],
      correctAnswerIndex: 0,
      explanation:
          "Yes! Matthew was a tax collector before Jesus called him to be a disciple. Matthew 9:9.",
      bibleVerse:
          'Read Matthew 9:9 to learn about Jesus calling Matthew the tax collector.',
    ),
    Quiz(
      question: 'Who was the first person to be raised from the dead by Jesus?',
      options: [
        "Lazarus",
        "Jairus’ daughter",
        "The widow’s son at Nain",
        "The man from the tombs"
      ],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Jesus raised Jairus’ daughter from the dead. Mark 5:41-42.",
      bibleVerse:
          'Check Mark 5:41-42 to read about the resurrection of Jairus’ daughter.',
    ),
    Quiz(
      question:
          'What was the name of the garden where Jesus prayed before His arrest?',
      options: ["Gethsemane", "Eden", "Olivet", "Galilee"],
      correctAnswerIndex: 0,
      explanation:
          "Exactly! Jesus prayed in the Garden of Gethsemane before His arrest. Matthew 26:36-39.",
      bibleVerse:
          'Read Matthew 26:36-39 to find out about Jesus praying in Gethsemane.',
    ),
    Quiz(
      question: 'Which Old Testament prophet was swallowed by a great fish?',
      options: ["Jonah", "Elijah", "Moses", "Amos"],
      correctAnswerIndex: 0,
      explanation:
          "Correct! Jonah was swallowed by a great fish after trying to escape God’s command. Jonah 1:17.",
      bibleVerse:
          'Check Jonah 1:17 to see how Jonah was swallowed by the fish.',
    ),
    Quiz(
      question: 'Who was the first king of Israel?',
      options: ["David", "Saul", "Solomon", "Hezekiah"],
      correctAnswerIndex: 1,
      explanation:
          "Correct! Saul was the first king of Israel. 1 Samuel 9:15-17.",
      bibleVerse:
          'Read 1 Samuel 9:15-17 to learn about the anointing of Saul as king.',
    ),
    Quiz(
      question: 'Which disciple was also known as "the Zealot"?',
      options: ["Simon", "Andrew", "Judas", "Thomas"],
      correctAnswerIndex: 0,
      explanation: "Yes! Simon was called the Zealot. Luke 6:15.",
      bibleVerse:
          'Check Luke 6:15 to see Simon, the Zealot, listed among the twelve disciples.',
    ),
  ];

  int _currentQuestionIndex = 0; //Tracks the current question index
  int? _selectedAnswerIndex; //Tracks the user's selected answer.
  int _score = 0; //Tracks the user's score.
  String _feedback =
      ''; //Stores the feedback message (e.g., "Correct Answer!" or "Wrong Answer!")
  String _bibleReference =
      ''; //Provide additional information based on the user's answer.
  String _explanation =
      ''; //Provide additional information based on the user's answer.

  //getter
  List<Quiz> get quizzes => _quizzes;
  int get currentQuestionIndex => _currentQuestionIndex;
  Quiz get currentQuiz => _quizzes[_currentQuestionIndex];
  int? get selectedAnswerIndex => _selectedAnswerIndex;
  int get score => _score;
  String get feedback => _feedback;
  String get bibleReference => _bibleReference;
  String get explanation => _explanation;

  // Method to check the answer and update feedback
  void checkAnswer(int selectedIndex) {
    _selectedAnswerIndex = selectedIndex;

    if (selectedIndex == currentQuiz.correctAnswerIndex) {
      _score++;
      _feedback = 'Correct Answer!';
      _bibleReference = currentQuiz.bibleVerse;
      _explanation =
          currentQuiz.explanation; // Show explanation for correct answer
    } else {
      _feedback = 'Wrong Answer! Please check the reference:';
      _bibleReference =
          currentQuiz.bibleVerse; // Show verse for incorrect answer
      _explanation = ''; // No explanation for incorrect answers
    }
    notifyListeners();
  }

  // Method to move to the next question
  void nextQuestion() {
    if (_currentQuestionIndex < _quizzes.length - 1) {
      _currentQuestionIndex++;
      _selectedAnswerIndex = null; // Reset selected answer
      _feedback = '';
      _bibleReference = '';
      _explanation = '';
      notifyListeners();
    }
  }

  // Method to reset the quiz
  void resetQuiz() {
    _currentQuestionIndex = 0;
    _score = 0;
    _selectedAnswerIndex = null;
    _feedback = '';
    _bibleReference = '';
    _explanation = '';
    notifyListeners();
  }
}
