import 'package:flutter/material.dart';

class QuizeHome extends StatelessWidget {
  const QuizeHome({super.key});

  @override
  build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(    //"Image.asset(" on the Image right click, select refactor, then select wrap with widget
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          
      // this is a two ways of opacity

          // Opacity(    //"widget( " in this widget replce 'Opacity'
          //   opacity: 0.5,    //then add opacity
          //   child: Image.asset(    //"Image.asset(" on the Image right click, select refactor, then select wrap with widget
          //     'assets/images/quiz-logo.png',
          //     width: 200,
          //   ),
          // ),
          
          const SizedBox(
            height: 30,
          ),

          const Text('Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              
            }, 

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
