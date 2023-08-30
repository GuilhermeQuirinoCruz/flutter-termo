import 'package:flutter/material.dart';
import 'package:termo/components/guess_board.dart';
import 'package:termo/components/keyboard.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      runSpacing: 50,
      children: [
        GuessBoard(),
        Keyboard(),
      ],
    );
  }
}