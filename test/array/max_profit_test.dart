import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = 5;
    expect(maxProfit([7, 1, 5, 3, 6, 4]), expected);
  });

  test('example 2', () {
    var expected = 0;
    expect(maxProfit([7, 6, 4, 3, 1]), expected);
  });
}
