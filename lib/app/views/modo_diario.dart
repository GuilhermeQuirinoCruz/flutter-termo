import 'package:flutter/material.dart';
import 'package:termo/components/game_board.dart';
import 'package:termo/controllers/game_board_controller.dart';

class DailyMode extends StatelessWidget {
  const DailyMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GameBoard(gameBoardController: GameBoardController(),),
    );
  }
}