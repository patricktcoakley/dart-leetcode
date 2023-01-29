import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var s = 'abcabcbb';
    var expected = 3;
    expect(lengthOfLongestSubstring(s), equals(expected));
  });

  test('example 2', () {
    var s = 'bbbbb';
    var expected = 1;
    expect(lengthOfLongestSubstring(s), equals(expected));
  });

  test('example 3', () {
    var s = 'pwwkew';
    var expected = 3;
    expect(lengthOfLongestSubstring(s), equals(expected));
  });
}
