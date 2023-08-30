import 'package:flutter/material.dart';
import 'package:termo/components/letter_display.dart';

class LetterRow extends StatelessWidget {

  const LetterRow({super.key});

  List<LetterDisplay> getLetterDisplays() {
    List<LetterDisplay> displays = [];
    for (var i = 0; i < 5; i++) {
      displays.add(const LetterDisplay());
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