import 'package:adc_basics/stuff/questions.dart';
import 'package:flutter/material.dart';
import 'package:adc_basics/summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required 
  this.onRestart, 
  required this.chooseAnswer
  });

  final List<String> chooseAnswer; 
  final void Function() onRestart;


    List<Map<String, Object>> getSummary(){
      final List<Map<String, Object>> summary = [];

      for (var i = 0; i < chooseAnswer.length; i++){
        summary.add({
          'question-idx' : i,
          'question' : questions[i].text,
          'answer': questions[i].answers[0],
          'user-answer': chooseAnswer[i]
        },
        );
      }

      return summary;
  }


  @override
  Widget build(BuildContext context){
    final summaryData = getSummary();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where(
      (data) => data['user-answer'] == data['answer']
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Congratulations!',
            textAlign: TextAlign.right,
            style: GoogleFonts.alfaSlabOne(
              fontWeight: FontWeight.w100,
              fontSize: 24,
              color: Color.fromARGB(255, 255, 30, 146),
            ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text('You answered $correctQuestions out of $totalQuestions',
            textAlign: TextAlign.right,
            style: GoogleFonts.alef(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 252, 213, 255),
              
            ),
            ),
          
            const SizedBox(height: 50,),
            QuestionsSummary(summaryData),

            const SizedBox(height: 50,),
            MaterialButton(
              splashColor: const Color.fromARGB(244, 65, 9, 75),
              textColor: const Color.fromARGB(255, 252, 213, 255),
              color: const Color.fromARGB(92, 250, 250, 250),
              shape: const StarBorder(side: BorderSide.none,),
              onPressed: onRestart,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
              child: Text('Restart quiz?',
              style: GoogleFonts.alef(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}