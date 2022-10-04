import 'package:flutter/material.dart';

//custom widgets
import './question.dart';
import './answer.dart';
import './quiz.dart';
import "./Static/questionList.dart";
import "./result.dart";
import "./reset.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = ["Hello? How are You?", "How are your family members?"];
  var quiz = allQuestions();
  int? _totalScore = 0;
  int? questionIndex = 0;

  get finalScore => "yOU";
  @override
  Widget build(BuildContext context) {
    void answerQuestion(int score) {
      _totalScore = (_totalScore! + score!);
      setState(() => {questionIndex = (questionIndex! + 1)});
    }

    void resetQuiz() {
      _totalScore = 0;
      setState(() => {questionIndex = (0)});
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: questionIndex! < quiz.length
          ? Quiz(questionIndex!, quiz, answerQuestion)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  Center(child: Result(_totalScore)),
                  Reset(resetQuiz)
                ]),
    ));
  }
}

void main() {
  runApp(MyApp());
}
