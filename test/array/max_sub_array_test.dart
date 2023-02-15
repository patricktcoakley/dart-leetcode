import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = 6;
    expect(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]), expected);
  });

  test('example 2', () {
    var expected = 1;
    expect(maxSubArray([1]), expected);
  });

  test('example 3', () {
    var expected = 23;
    expect(maxSubArray([5, 4, -1, 7, 8]), expected);
  });
}
