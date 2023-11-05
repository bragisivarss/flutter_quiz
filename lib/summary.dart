
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adc_basics/new_stuff.dart/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }





/*
 @override
Widget build(BuildContext context) {
  return SizedBox(
    height: 300,
    child: SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          return Row( 
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 249, 164, 255),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 3, left: 3, right: 3),
                child: Text(
                  ((data['question-idx'] as int) + 1).toString(),
                  style: GoogleFonts.alef(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 249, 164, 255),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 10,),
                    Text(data['user-answer'] as String),
                    Text(data['answer'] as String),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    ),
  );
}
}
*/
}