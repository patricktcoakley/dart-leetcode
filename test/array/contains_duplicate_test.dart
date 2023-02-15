import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = true;
    expect(containsDuplicate([1, 2, 3, 1]), expected);
  });

  test('example 2', () {
    var expected = false;
    expect(containsDuplicate([1, 2, 3, 4]), expected);
  });

  test('example 3', () {
    var expected = true;
    expect(containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]), expected);
  });
}
