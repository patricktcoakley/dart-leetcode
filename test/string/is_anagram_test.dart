import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var s = 'anagram';
    var t = 'nagaram';
    var expected = true;
    expect(isAnagram(s, t), expected);
  });

  test('example 2', () {
    var s = 'rat';
    var t = 'car';
    var expected = false;
    expect(isAnagram(s, t), expected);
  });
}
