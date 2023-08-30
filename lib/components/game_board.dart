import 'package:flutter/material.dart';
import 'package:termo/components/guess_board.dart';
import 'package:termo/components/keyboard.dart';
import 'package:termo/controllers/game_board_controller.dart';
import 'package:termo/controllers/keyboard_controller.dart';

class GameBoard extends StatelessWidget {
  final GameBoardController gameBoardController;
  const GameBoard({super.key, required this.gameBoardController});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      runSpacing: 50,
      children: [
        GuessBoard(guessBoardController: gameBoardController.guessBoardController,),
        Keyboard(keyboardController: KeyboardController(gameBoardController: gameBoardController),),
      ],
    );
  }
}