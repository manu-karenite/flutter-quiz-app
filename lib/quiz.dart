import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //we need three variables
  final int questionIndex;
  final Function answerQuestion;
  final quiz;
  const Quiz(this.questionIndex, this.quiz, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(quiz[questionIndex]['q']),
      ...(quiz[questionIndex]['a']).map(
          (curr) => Answer(curr['text'], () => answerQuestion(curr['score'])))
    ]);
  }
}
