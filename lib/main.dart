import 'package:flutter/material.dart';

import 'package:quize_app/quize_home.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: QuizeHome(
          Color. fromARGB(255, 33, 5, 109), 
        ),
      ),
    ),
  );
}