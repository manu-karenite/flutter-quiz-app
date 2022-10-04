import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import "package:flutter/material.dart";

class Question extends StatelessWidget {
  String questionText = "";

  Question(query) {
    this.questionText = query;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
