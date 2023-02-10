import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = true;
    expect(validPalindrome('aba'), expected);
  });

  test('example 2', () {
    var expected = true;
    expect(validPalindrome('abca'), expected);
  });

  test('example 3', () {
    var expected = false;
    expect(validPalindrome('abc'), expected);
  });
}
