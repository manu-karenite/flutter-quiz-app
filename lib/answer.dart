import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
        child: ElevatedButton(
          onPressed: () => selectHandler(),
          child: Text(answerText),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            // background (button) color
            foregroundColor: Colors.white,
            // foreground (text) color
          ),
        ));
  }
}
