void rotate(List<List<int>> matrix) {
  var n = matrix.length;

  for (var i = 0; i < n; i++) {
    for (var j = i + 1; j < n; j++) {
      var t = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = t;
    }
  }

  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n / 2; j++) {
      var t = matrix[i][j];
      matrix[i][j] = matrix[i][n - j - 1];
      matrix[i][n - j - 1] = t;
    }
  }
}
