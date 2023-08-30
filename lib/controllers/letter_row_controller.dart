import 'package:termo/controllers/letter_display_controller.dart';

class LetterRowController {
  List<LetterDisplayController> letterDisplayControllers = [];
  int currentDisplay = 0;
  
  void addLetter(String letter) {
    if (currentDisplay >= letterDisplayControllers.length) {
      return;
    }
    
    letterDisplayControllers[currentDisplay].changeLetter(letter);

    letterDisplayControllers[currentDisplay++].setHighlight(false);
    highlightDisplay();
  }

  void highlightDisplay() {
    if (currentDisplay < letterDisplayControllers.length) {
      letterDisplayControllers[currentDisplay].setHighlight(true);
    }
  }
}