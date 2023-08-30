import 'package:flutter/material.dart';
import 'package:termo/components/letter_row.dart';
import 'package:termo/controllers/guess_board_controller.dart';
import 'package:termo/controllers/letter_row_controller.dart';

class GuessBoard extends StatefulWidget {
  final GuessBoardController guessBoardController;
  const GuessBoard({super.key, required this.guessBoardController});

  @override
  State<GuessBoard> createState() => _GuessBoardState();
}

class _GuessBoardState extends State<GuessBoard> {
  getLetterRows() {
    letterRows = [];
    for (var i = 0; i < 6; i++) {
      LetterRowController letterRowController = LetterRowController();
      widget.guessBoardController.letterRowControllers.add(letterRowController);
      letterRows.add(LetterRow(letterRowController: letterRowController));
    }
  }

  List<LetterRow> letterRows = [];

  @override
  Widget build(BuildContext context) {
    getLetterRows();
    return Wrap(
      verticalDirection: VerticalDirection.down,
      runSpacing: 10,
      children: letterRows,
    );
  }
}