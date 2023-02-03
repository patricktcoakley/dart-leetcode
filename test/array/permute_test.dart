import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = [
      [1, 2, 3],
      [1, 3, 2],
      [2, 1, 3],
      [2, 3, 1],
      [3, 1, 2],
      [3, 2, 1]
    ];
    expect(permute([1, 2, 3]), equals(expected));
  });

  test('example 2', () {
    var expected = [
      [0, 1],
      [1, 0]
    ];
    expect(permute([0, 1]), equals(expected));
  });

  test('example 3', () {
    var expected = [
      [1]
    ];
    expect(permute([1]), equals(expected));
  });
}
