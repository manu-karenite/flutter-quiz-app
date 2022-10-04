// ignore_for_file: must_be_immutable

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int? totalScore;
  const Result(this.totalScore, {super.key});

  String get answer {
    double fraction = totalScore! / 3;
    String ans = "";
    double? oneThird = (1 / 3);
    double twoThird = (2 / 3);

    if (fraction! < oneThird) {
      return "You Need to Work Hard!  \n Your Score is $totalScore";
    } else if (fraction! >= oneThird && fraction! <= twoThird) {
      return "You Did Good! Keep Going On! \n Your Score is $totalScore";
    } else {
      return "You are Awesome!  \n Your Score is $totalScore";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      answer,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,
    ));
  }
}
