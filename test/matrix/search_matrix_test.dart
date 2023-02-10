import 'package:leetcode/matrix/search_matrix.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var matrix = [
      [1, 3, 5, 7],
      [10, 11, 16, 20],
      [23, 30, 34, 60]
    ];
    var target = 3;
    var expected = true;
    expect(searchMatrix(matrix, target), expected);
  });

  test('example 1', () {
    var matrix = [
      [1, 3, 5, 7],
      [10, 11, 16, 20],
      [23, 30, 34, 60]
    ];
    var target = 13;
    var expected = false;
    expect(searchMatrix(matrix, target), expected);
  });
}
