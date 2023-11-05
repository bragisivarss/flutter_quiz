import 'package:adc_basics/questions.dart';
import 'package:adc_basics/stuff/questions.dart';
import 'package:flutter/material.dart';
import 'package:adc_basics/start.dart';
import 'package:adc_basics/results.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswer = [];
 


 /* @override
  void initState() {
    super.initState();
    activeScreen = 'question-screen';
  }
  */

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chosenAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }
    void restartQuiz(){
      setState(() {
        selectedAnswer = [];
        activeScreen = 'question-screen';
      });
    }
 
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(
        onSelectAnswer: chosenAnswer,
        );
    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chooseAnswer: selectedAnswer,
      onRestart: restartQuiz,
      );
    }
  

   
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 68, 0, 89),
                Color.fromARGB(255, 23, 117, 218)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}



