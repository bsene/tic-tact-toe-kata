class Board {
  late final String _state;
  Board(String state) {
    _state = state;
  }
  bool isFull() {
    return !_state.contains(" ");
  }
}
