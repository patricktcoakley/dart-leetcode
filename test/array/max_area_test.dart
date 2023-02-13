
import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = 49;
    expect(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), expected);
  });

  test('example 2', () {
    var expected = 1;
    expect(maxArea([1, 1]), expected);
  });
}
