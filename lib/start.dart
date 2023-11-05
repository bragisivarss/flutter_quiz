import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizStart, {super.key});

  final void Function() quizStart;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 120),
          Container(
            margin: const EdgeInsets.only(bottom: 80.0),
            child: Image.asset(
              'assets/quiz.png',
              color: const Color.fromARGB(97, 245, 103, 255),
              height: 340,
            ),
          ),
          Text(
            'I am learning flutter the fun way!',
            style: GoogleFonts.alef(
              fontWeight: FontWeight.bold,
                fontSize: 22, 
                color: const Color.fromARGB(255, 251, 199, 255),
                ),
          ),
          
          Container(
            margin: const EdgeInsets.only(top: 50),
              child: OutlinedButton.icon(
                onPressed: quizStart,
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(222, 255, 223, 223),
                  backgroundColor: const Color.fromARGB(81, 217, 35, 227),
                  shape: const StadiumBorder(),
                  side: const BorderSide(width: 1, 
                  color: Color.fromARGB(180, 255, 106, 190),
                  ),
                ),
                icon: const  Icon(Icons.arrow_forward_outlined,
                color: Color.fromARGB(121, 255, 255, 255),
                size: 18,
                ),
                label: const Text('Start Quiz!',
                style: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
