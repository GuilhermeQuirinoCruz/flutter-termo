import 'package:flutter/material.dart';
import 'package:termo/components/letter_display.dart';
import 'package:termo/controllers/letter_display_controller.dart';
import 'package:termo/controllers/letter_row_controller.dart';

class LetterRow extends StatefulWidget {
  final LetterRowController letterRowController;

  const LetterRow({super.key, required this.letterRowController});

  @override
  State<LetterRow> createState() => _LetterRowState();
}

class _LetterRowState extends State<LetterRow> {
  List<LetterDisplay> getLetterDisplays() {
    List<LetterDisplay> displays = [];
    for (var i = 0; i < 5; i++) {
      LetterDisplayController letterDisplayController = LetterDisplayController();
      widget.letterRowController.letterDisplayControllers.add(letterDisplayController);
      displays.add(LetterDisplay(letterDisplayController: letterDisplayController,));
    }

    return displays;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        children: getLetterDisplays(),
      ),
    );
  }
}