import 'package:adc_basics/stuff/questions.dart';
import 'package:flutter/material.dart';
import 'package:adc_basics/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';



class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    // currentQuestionIndex = currentQuestionIndex + 1;
    setState(() {
    currentQuestionIndex++;
    });
  }



  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];

      return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.alef(
              color: const Color.fromARGB(255, 224, 218, 218),
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 70),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(
              answerText: item,
             onTap: () {
              answerQuestion(item);
             }
             );
          }),
        ],
      ),
    );
  }
}