import 'package:flutter/material.dart';
import 'package:termo/components/game_board.dart';

class DailyMode extends StatelessWidget {
  const DailyMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const GameBoard(),
    );
  }
}