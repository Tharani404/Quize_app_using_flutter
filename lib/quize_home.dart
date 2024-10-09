import 'package:flutter/material.dart';

class QuizeHome extends StatelessWidget {
  const QuizeHome({super.key});

  @override
  build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
          width: 200,
          ),
          
          const SizedBox(
            height: 30,
          ),

          const Text('Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 250, 250),
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {}, 

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),

            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
