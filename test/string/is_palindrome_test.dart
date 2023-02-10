import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var s = 'A man, a plan, a canal: Panama';
    var expected = true;
    expect(isPalindrome(s), expected);
  });

  test('example 2', () {
    var s = 'race a car';
    var expected = false;
    expect(isPalindrome(s), expected);
  });

  test('example 3 ', () {
    var s = ' ';
    var expected = true;
    expect(isPalindrome(s), expected);
  });
}
