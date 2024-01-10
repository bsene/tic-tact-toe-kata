import 'package:tic_tact_toe_kata/player.dart';

abstract class Board {
  bool isFull();

  bool hasColumnCompletedBy(Player p);
}

class FullBoard implements Board {
  @override
  bool isFull() {
    return true;
  }

  @override
  bool hasColumnCompletedBy(Player p) {
    return false;
  }
}

class EmptyBoard implements Board {
  @override
  bool isFull() {
    return false;
  }

  @override
  bool hasColumnCompletedBy(Player p) {
    return false;
  }
}

class NonFullBoard implements Board {
  @override
  bool isFull() {
    return false;
  }

  @override
  bool hasColumnCompletedBy(Player p) {
    return false;
  }
}

class PlayerXCompleted1stColumn implements Board {
  @override
  bool isFull() {
    return false;
    ;
  }

  @override
  bool hasColumnCompletedBy(Player p) {
    return true;
  }
}

class PlayerOCompleted2ndColumn extends PlayerXCompleted1stColumn {
  @override
  bool hasColumnCompletedBy(Player p) {
    return p.symbol == 'O';
  }
}
