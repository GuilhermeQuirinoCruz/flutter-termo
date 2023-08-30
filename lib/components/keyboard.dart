import 'package:flutter/material.dart';
import 'package:termo/components/keyboard_row.dart';
import 'package:termo/controllers/keyboard_controller.dart';

class Keyboard extends StatefulWidget {
  final KeyboardController keyboardController;
  const Keyboard({super.key, required this.keyboardController});

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      verticalDirection: VerticalDirection.down,
      alignment: WrapAlignment.spaceAround,
      runSpacing: 8,
      children: [
        KeyboardRow(keyLetters: const ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'], keyboardController: widget.keyboardController),
        KeyboardRow(keyLetters: const ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'], keyboardController: widget.keyboardController),
        KeyboardRow(keyLetters: const ['Z', 'X', 'C', 'V', 'B', 'N', 'M', 'DEL', 'OK'], keyboardController: widget.keyboardController),
      ],
    );
  }
}