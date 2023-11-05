import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adc_basics/new_stuff.dart/identifier.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context){
    final isCorrectAnswer =
    itemData['user-answer'] == itemData['answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndentifier(isCorrectAnswer: isCorrectAnswer, 
        questionIdx: itemData['question-idx'] as int,
        ),
        const SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.aldrich(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(itemData['user-answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 202, 171, 252)
              ),
              ),
              Text(itemData['answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 181, 254, 246),
              ),
              ),
            ],
          ),
          ),
      ],
    );
  }
}