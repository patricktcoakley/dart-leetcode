import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf'];
    expect(letterCombinations('23'), equals(expected));
  });

  test('example 2', () {
    var expected = [];
    expect(letterCombinations(''), equals(expected));
  });

  test('example 2', () {
    var expected = ['a', 'b', 'c'];
    expect(letterCombinations('2'), equals(expected));
  });
}
