import 'package:flutter/material.dart';
import 'package:termo/components/keyboard_key.dart';
import 'package:termo/controllers/keyboard_controller.dart';

class KeyboardRow extends StatefulWidget {
  final List<String> keyLetters;
  final KeyboardController keyboardController;

  const KeyboardRow({super.key, required this.keyLetters, required this.keyboardController});

  @override
  State<KeyboardRow> createState() => _KeyboardRowState();
}

class _KeyboardRowState extends State<KeyboardRow> {
  List<KeyboardKey> getKeys() {
    List<KeyboardKey> keys = [];
    for (var letter in widget.keyLetters) {
      keys.add(KeyboardKey(letter: letter, keyboardController: widget.keyboardController,));
    }

    return keys;
  }
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 3,
      children: getKeys(),
    );
  }
}