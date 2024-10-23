// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    // ignore: non_constant_identifier_names
    final List<Map<String, Object>> Summary = [];

    for (var i = 0; i < chosenAnswers.length; i++ ) {
      //loop body
      Summary.add(
      {
        'question_index' : i,
        'question' :questions[i].text,
        'correct_answer' : questions[i].answer[0],
        'user_answer' : chosenAnswers[i]
      });
    }

    return Summary;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}