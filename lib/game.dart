// ignore_for_file: prefer_initializing_formals, prefer_typing_uninitialized_variables

import 'package:tic_tact_toe_kata/board.dart';
import 'package:tic_tact_toe_kata/player.dart';

class Game {
  Board board;
  Player x = Player('X');
  Player o = Player('O');

  Game({required this.board});

  bool isOver() {
    return board.isFull() ||
        board.hasColumnCompletedBy(x) ||
        board.hasColumnCompletedBy(o);
  }

  String result() {
    if (board.hasColumnCompletedBy(x)) return "Player X wins!";
    if (board.hasColumnCompletedBy(o)) return "Player O wins!";
    return isOver() ? "It's a draw!" : "";
  }
}
