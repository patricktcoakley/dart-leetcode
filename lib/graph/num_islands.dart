import 'dart:collection';

int numIslands(List<List<String>> grid) {
  var count = 0;
  var rows = grid.length;
  var cols = grid[0].length;
  var q = Queue<List<int>>();

  for (var row = 0; row < rows; row++) {
    for (var col = 0; col < cols; col++) {
      if (grid[row][col] == "1") {
        q.add([row, col]);
        while (q.isNotEmpty) {
          var top = q.removeFirst();
          var r = top[0];
          var c = top[1];

          if (r >= 0 && r < rows && c >= 0 && c < cols && grid[r][c] == "1") {
            grid[r][c] = "0";
            q.add([r + 1, c]);
            q.add([r - 1, c]);
            q.add([r, c + 1]);
            q.add([r, c - 1]);
          }
        }
        count += 1;
      }
    }
  }

  return count;
}
