import 'package:flutter/material.dart';

class LetterDisplay extends StatefulWidget {
  const LetterDisplay({super.key});

  @override
  State<LetterDisplay> createState() => _LetterDisplayState();
}

class _LetterDisplayState extends State<LetterDisplay> {
  String letter = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          letter,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}
