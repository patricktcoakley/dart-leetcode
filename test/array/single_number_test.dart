import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = 1;
    expect(singleNumber([2, 2, 1]), expected);
  });

  test('example 2', () {
    var expected = 4;
    expect(singleNumber([4, 1, 2, 1, 2]), expected);
  });

  test('example 3', () {
    var expected = 1;
    expect(singleNumber([1]), expected);
  });
}
