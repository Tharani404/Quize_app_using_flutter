// import 'package:flutter/material.dart';

class QuizQuestion {

  const QuizQuestion(this.text, this.answer); //this.text,and nswer is the arguments

  final String text;
  final List<String> answer;

  List<String>getShuffledAnswers() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle(); 
    return shuffledList;
  }

}

// class _QuizQuestionState extends State<QuizQuestion> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }