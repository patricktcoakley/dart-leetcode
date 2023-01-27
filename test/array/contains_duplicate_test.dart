import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    expect(containsDuplicate([1, 2, 3, 1]), equals(true));
  });

  test('example 2', () {
    expect(containsDuplicate([1, 2, 3, 4]), equals(false));
  });

  test('example 3', () {
    expect(containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]), equals(true));
  });
}
