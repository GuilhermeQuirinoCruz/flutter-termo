import 'package:flutter/material.dart';
import 'package:termo/controllers/letter_display_controller.dart';

class LetterDisplay extends StatefulWidget {
  final LetterDisplayController letterDisplayController;
  const LetterDisplay({super.key, required this.letterDisplayController});

  @override
  State<LetterDisplay> createState() => _LetterDisplayState();
}

class _LetterDisplayState extends State<LetterDisplay> {

  void updateDisplay() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.letterDisplayController.updateDisplay = updateDisplay;
    return SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: widget.letterDisplayController.highlighted ? Colors.tealAccent : Colors.teal,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          widget.letterDisplayController.letter,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}
