bool searchMatrix(List<List<int>> matrix, int target) {
  var m = matrix.length;
  var n = matrix[0].length;
  var row = m - 1;
  var col = 0;

  while (row >= 0 && row < m && col >= 0 && col < n) {
    if (matrix[row][col] > target) {
      row -= 1;
    } else if (matrix[row][col] < target) {
      col += 1;
    } else {
      return true;
    }
  }

  return false;
}
