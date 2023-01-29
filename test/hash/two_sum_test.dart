import 'package:leetcode/hash/two_sum.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = [0, 1];
    expect(twoSum([2, 7, 11, 15], 9), containsAll(expected));
  });

  test('example 2', () {
    var expected = [1, 2];
    expect(twoSum([3, 2, 4], 6), containsAll(expected));
  });

  test('example 3', () {
    var expected = [0, 1];
    expect(twoSum([3, 3], 6), containsAll(expected));
  });
}
