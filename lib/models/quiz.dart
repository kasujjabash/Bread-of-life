class Quiz {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;// Index of the correct answer (0 for A, 1 for B, etc.)
  final String explanation; // Explanation when the answer is wrong
  final String bibleVerse; // Bible verse reference to show

  Quiz({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
    required this.bibleVerse,
  });
}