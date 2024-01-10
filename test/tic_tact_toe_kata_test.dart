import 'package:tic_tact_toe_kata/board.dart';
import 'package:tic_tact_toe_kata/game.dart';
import 'package:test/test.dart';

void main() {
  test("a game is over when all fields are taken", () {
    var game = Game(board: Board("123456789"));
    expect(game.isOver(), true);
  });
  test("a game is NOT over when field 3x1 is free", () {
    var game = Game(board: Board("12 456789"));
    expect(game.isOver(), false);
  });
  test("a game is NOT over when field 3x3 is free", () {
    var game = Game(board: Board("12345678 "));
    expect(game.isOver(), false);
  });
  test("a game is NOT over when field 1x1 is free", () {
    var game = Game(board: Board(" 23456789"));
    expect(game.isOver(), false);
  });
}
