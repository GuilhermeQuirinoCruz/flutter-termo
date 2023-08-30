import 'package:termo/controllers/letter_row_controller.dart';

class GuessBoardController {
  List<LetterRowController> letterRowControllers = [];
  int currentRow = 0;

  void addLetter(String letter) {
    letterRowControllers[currentRow].addLetter(letter);
  }
}
