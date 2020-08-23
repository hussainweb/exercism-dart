class CollatzConjecture {
  int steps(int n) {
    if (n <= 0) {
      throw ArgumentError('Only positive numbers are allowed');
    }

    var steps = 0;
    while (n != 1) {
      switch (n % 2) {
        case 0:
          n ~/= 2;
          break;
        case 1:
          n = (3 * n) + 1;
          break;
      }
      steps++;
    }

    return steps;
  }
}
