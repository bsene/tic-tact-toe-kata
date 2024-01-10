// ignore_for_file: prefer_initializing_formals, prefer_typing_uninitialized_variables

import 'package:tic_tact_toe_kata/board.dart';

class Game {
  Board board;

  Game({required this.board});

  bool isOver() {
    return board.isFull();
  }
}
