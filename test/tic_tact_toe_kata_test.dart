import 'package:tic_tact_toe_kata/tic_tact_toe_kata.dart';
import 'package:test/test.dart';

void main() {
  test("a game is over when all fields in a column are taken by a player", () {
    var game = Game();
    expect(game.isOver(), true);
  });
}
