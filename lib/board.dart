abstract class Board {
  bool isFull();
}

class FullBoard implements Board {
  @override
  bool isFull() {
    return true;
  }
}

class EmptyBoard implements Board {
  @override
  bool isFull() {
    return false;
  }
}

class NonFullBoard implements Board {
  @override
  bool isFull() {
    return false;
  }
}
