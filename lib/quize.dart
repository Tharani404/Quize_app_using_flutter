import 'package:flutter/material.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/quize_home.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});  //add constructor function

  @override
  State<Quize> createState() {
    return _QuizeState();
  }
}

class _QuizeState extends State<Quize> { // "_" in private

  Widget? activeScreen; //storing a widget in a variable

  @override
  void initState() {
    activeScreen = QuizeHome(switchScreen);
    super.initState(); 
  }

  //method Defining a function
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {   //build method
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

          child: activeScreen,
        ),
      ),
    );
  
  }
}