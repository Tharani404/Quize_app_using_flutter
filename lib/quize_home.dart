import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizeHome extends StatelessWidget {
  const QuizeHome(this.startQuiz, {super.key});

  final void Function() startQuiz;

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

          Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 219, 164, 229),
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, 

            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 241, 212, 246),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
