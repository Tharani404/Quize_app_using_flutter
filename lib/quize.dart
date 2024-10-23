import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/quize_home.dart';
import 'package:quize_app/results_screen.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});  //add constructor function

  @override
  State<Quize> createState() {
    return _QuizeState();
  }
}

class _QuizeState extends State<Quize> { // "_" in private

  // Widget? activeScreen; //storing a widget in a variable

  // @override
  // void initState() {
  //   activeScreen = QuizeHome(switchScreen);
  //   super.initState(); 
  // }

  List<String> _selectedAnswers = [];
  var activeScreen = 'start-screen';

  //method Defining a function
  void switchScreen() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }


  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {  //build method
    Widget screenWidget = QuizeHome(switchScreen);

    // final screenWidget = activeScreen == 'start-screen' 
    //   ? QuizeHome(switchScreen) 
    //   : QuestionsScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 121, 39, 180),
                Color.fromARGB(255, 131, 95, 157),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
           
          child: screenWidget,
        
        ),
      ),
    );
  
  }
}