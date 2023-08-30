import 'package:flutter/material.dart';
import 'package:termo/components/letter_row.dart';

class GuessBoard extends StatefulWidget {

  const GuessBoard({super.key});

  @override
  State<GuessBoard> createState() => _GuessBoardState();
}

class _GuessBoardState extends State<GuessBoard> {

  getLetterRows() {
    letterRows = [];
    for (var i = 0; i < 6; i++) {
      letterRows.add(const LetterRow());
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