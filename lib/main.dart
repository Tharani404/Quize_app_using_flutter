import 'package:flutter/material.dart';
import 'package:quize_app/quize_home.dart';


void main(){
  runApp(
    MaterialApp(
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

          child: const QuizeHome(),
        ),
      ),
    ),
  );
}