import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget{
  const QuestionIndentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIdx,
  });
  final int questionIdx;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context){
    final questionNumber = questionIdx + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
        ? const Color.fromARGB(255, 67, 255, 83)    
        : const Color.fromARGB(255, 253, 78, 78),
        borderRadius: BorderRadius.circular(80)
        ),
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 68, 45, 74),
          ),
        ),
    );
  }
}