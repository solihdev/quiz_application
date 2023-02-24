import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  String questionTitle;
  int index;

  QuestionWidget({Key? key, required this.questionTitle, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 64,
        ),
        Text(
          "Question - $index",
          style: const TextStyle(
              fontSize: 24,
              color: Color(0xFF6066D0),
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          questionTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
