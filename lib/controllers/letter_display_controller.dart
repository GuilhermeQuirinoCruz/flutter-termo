class LetterDisplayController {
  String letter = '';
  Function? updateDisplay;
  bool highlighted = false;

  void changeLetter(String letter) {
    this.letter = letter;
    updateDisplay!();
  }

  void setHighlight(bool highlight) {
    highlighted = highlight;
    updateDisplay!();
  }
}