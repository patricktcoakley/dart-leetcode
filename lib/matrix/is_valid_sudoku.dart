import 'dart:collection';

bool isValidSudoku(List<List<String>> board) {
  bool addIfValid(String input, HashSet<String> set) {
    if (input != ".") {
      if (set.contains(input)) {
        return false;
      }
      set.add(input);
    }
    return true;
  }

  for (var row = 0; row < 9; row++) {
    var horizontalSet = HashSet<String>();
    var verticalSet = HashSet<String>();
    for (var col = 0; col < 9; col++) {
      if (!addIfValid(board[row][col], horizontalSet)) {
        return false;
      }
      if (!addIfValid(board[col][row], verticalSet)) {
        return false;
      }
    }
  }

  for (var row = 0; row < 9; row += 3) {
    for (var col = 0; col < 9; col += 3) {
      var boxSet = HashSet<String>();
      for (var i = row; i < row + 3; i++) {
        for (var j = col; j < col + 3; j++) {
          if (!addIfValid(board[i][j], boxSet)) {
            return false;
          }
        }
      }
    }
  }

  return true;
}
