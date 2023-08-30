import 'package:termo/controllers/guess_board_controller.dart';

class GameBoardController {
  final GuessBoardController guessBoardController = GuessBoardController();

  GameBoardController();
  
  void pressLetter(String letter) {
    guessBoardController.addLetter(letter);
  }
}