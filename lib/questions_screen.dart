import 'package:flutter/material.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


//widget class
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

//state class
class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void answeQuestion(String selectedAnswers) {

    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;

    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex ++; //increments the value by 1
    });
  }

  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 233, 167, 244),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center,
          ),
        
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer, 
                onTap: () {
                  answeQuestion(answer);
                },
              );
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