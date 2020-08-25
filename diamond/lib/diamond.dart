class Diamond {
  List<String> rows(String letter) {
    var lines = List<String>();

    var letterCode = letter.codeUnits[0];
    var spaces = letterCode - 65;
    var width = 2 * spaces + 1;

    for (var i = 65; i <= letterCode; i++, spaces--) {
      lines.add(get_line(String.fromCharCode(i), width, spaces));
    }
    for (var i = letterCode - 1, spaces = 1; i >= 65; i--, spaces++) {
      lines.add(get_line(String.fromCharCode(i), width, spaces));
    }
    return lines;
  }

  String get_line(String letter, int width, int spaces) {
    var spacing = width - (spaces * 2) - 2;
    var line = " " * spaces + letter;
    if (spacing > 0) {
      line += " " * spacing + letter;
    }
    line += " " * spaces;
    return line;
  }
}
