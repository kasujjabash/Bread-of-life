import 'package:flutter/material.dart';
import 'package:kjv/widgets/my_button.dart';
import 'package:kjv/widgets/radio_button.dart';
import 'package:provider/provider.dart';
import 'package:kjv/providers/quiz_provider.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (context, quizProvider, child) {
        final quiz = quizProvider.currentQuiz;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Bible Quiz'),
            actions: [
              IconButton(
                onPressed: quizProvider.resetQuiz,
                icon: const Icon(
                  Icons.refresh,
                  size: 25,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header banner
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/quizz-banner.jpg')),
                  //sizebox
                  const SizedBox(
                    height: 20,
                  ),
                  // Question Indicator

                  Text(
                    'Question ${quizProvider.currentQuestionIndex + 1}/${quizProvider.quizzes.length}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),

                  // Question Text
                  Text(
                    quiz.question,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // Quiz Options
                  ...quiz.options.asMap().entries.map((entry) {
                    final index = entry.key;
                    final option = entry.value;

                    return RadionButton(
                      option: option,
                      index: index,
                      selectedIndex: quizProvider.selectedAnswerIndex ?? -1,
                      onSelected: (selectedIndex) {
                        quizProvider.checkAnswer(selectedIndex);
                      },
                    );
                  }).toList(),

                  const SizedBox(height: 20),

                  // Feedback Section
                  if (quizProvider.feedback.isNotEmpty) ...[
                    Text(
                      quizProvider.feedback,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: quizProvider.feedback == 'Correct Answer!'
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (quizProvider.feedback == 'Correct Answer!')
                      Text(
                        quizProvider.explanation,
                        style: const TextStyle(fontSize: 16),
                      ),
                    if (quizProvider.feedback ==
                        'Wrong Answer! Please check the reference:')
                      Text(
                        quizProvider.bibleReference,
                        style: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                  ],

                  const SizedBox(height: 10),

                  // Navigation Button
                  if (quizProvider.currentQuestionIndex <
                      quizProvider.quizzes.length - 1)
                    // ElevatedButton(
                    //   onPressed: quizProvider.nextQuestion,
                    //   child: const Text('Next Question'),
                    // )
                    MyButton(
                      buttonName: 'Next Question',
                      onTap: quizProvider.nextQuestion,
                    )
                  else
                    // ElevatedButton(
                    //   onPressed: quizProvider.resetQuiz,
                    //   child: const Text('Restart Quiz'),
                    // ),

                    MyButton(
                      buttonName: ' Restart Quiz',
                      onTap: quizProvider.resetQuiz,
                    )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
