import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 105, right: 105),
      child:
       Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(222, 255, 223, 223),
              backgroundColor: const Color.fromARGB(81, 217, 35, 227),
              shape: const StadiumBorder(),
              side: const BorderSide(
                  width: 2, color: Color.fromARGB(81, 255, 106, 190)),
            ),
            child: Text(answerText,
            textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 35,),
        ],
      ),
    );
  }
}
