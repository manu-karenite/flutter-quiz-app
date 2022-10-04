import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  VoidCallback onPressHandler;
  Reset(this.onPressHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: onPressHandler,
          child: Text("Restart Quiz"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
        ));
  }
}
