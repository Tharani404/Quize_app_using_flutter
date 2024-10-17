import 'package:flutter/material.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(void Function() switchScreen, {super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {

    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text, 
              style: const TextStyle(
              color: Colors.white,
              // fontSize: 25
            ),
            textAlign: TextAlign.center,
          ),
        
            const SizedBox(height: 30),
            ...currentQuestion.answer.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            })
            // AnswerButton(
            //   onTap: () {}, 
            //   answerText: currentQuestion.answer[0],
            // ),
        
            // AnswerButton(
            //   onTap: () {}, 
            //   answerText: currentQuestion.answer[1],
            // ),
        
            // AnswerButton(
            //   onTap: () {}, 
            //   answerText: currentQuestion.answer[2],
            // ),
        
            // AnswerButton(
            //   onTap: () {}, 
            //   answerText: currentQuestion.answer[3],
            // ),
          ],
        ),
      ),
    );
  }

}