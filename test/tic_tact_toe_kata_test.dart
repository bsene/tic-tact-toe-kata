import 'package:tic_tact_toe_kata/board.dart';
import 'package:tic_tact_toe_kata/game.dart';
import 'package:test/test.dart';

void main() {
  test("a game is over when all fields are taken", () {
    var game = Game(board: FullBoard());
    expect(game.isOver(), true);
  });
  test("a game is NOT over when field 3x1 is free", () {
    var game = Game(board: NonFullBoard());
    expect(game.isOver(), false);
  });
  test("a game is NOT over when field 3x3 is free", () {
    var game = Game(board: NonFullBoard());
    expect(game.isOver(), false);
  });
  test("a game is NOT over when field 1x1 is free", () {
    var game = Game(board: NonFullBoard());
    expect(game.isOver(), false);
  });
}
