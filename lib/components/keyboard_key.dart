import 'package:flutter/material.dart';
import 'package:termo/controllers/keyboard_controller.dart';

class KeyboardKey extends StatefulWidget {
  final String letter;
  final KeyboardController keyboardController;
  const KeyboardKey(
      {super.key, required this.letter, required this.keyboardController});

  @override
  State<KeyboardKey> createState() => _KeyboardKeyState();
}

class _KeyboardKeyState extends State<KeyboardKey> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 40,
      child: Stack(children: [
        ElevatedButton(
          onPressed: () {
            widget.keyboardController.pressKey(widget.letter);
          },
          child: Container(),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(3),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.letter,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     width: 30,
  //     height: 35,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(5),
  //         color: Colors.blueGrey,
  //       ),
  //       padding: const EdgeInsets.all(3),
  //       child: Center(
  //         child: FittedBox(
  //           fit: BoxFit.scaleDown,
  //           child: Text(
  //             widget.letter,
  //             textAlign: TextAlign.center,
  //             style: const TextStyle(
  //               fontSize: 20,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
