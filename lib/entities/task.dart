import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  Task({required this.text, required this.isChecked});

  String text;
  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Text(text),
        ),
        Container(
            child: Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            value == true ? value = false : value = true;
          },
        )),
      ],
    );
  }
}
