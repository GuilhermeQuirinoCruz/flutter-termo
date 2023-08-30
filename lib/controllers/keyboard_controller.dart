import 'package:termo/controllers/game_board_controller.dart';

class KeyboardController {
  final GameBoardController gameBoardController;
  KeyboardController({required this.gameBoardController});

  void pressKey(String key) {
    if (key == 'DEL') {

    } else if (key == 'OK') {

    } else {
      gameBoardController.pressLetter(key);
    }
  }
}