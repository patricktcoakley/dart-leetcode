import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    expect(maxProfit([7, 1, 5, 3, 6, 4]), equals(5));
  });

  test('example 2', () {
    expect(maxProfit([7, 6, 4, 3, 1]), equals(0));
  });
}
