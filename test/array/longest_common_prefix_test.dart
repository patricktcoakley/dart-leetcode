import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = 'fl';
    expect(longestCommonPrefix(['flower', 'flow', 'flight']), expected);
  });

  test('example 2', () {
    var expected = '';
    expect(longestCommonPrefix(['dog', 'racecar', 'car']), expected);
  });
}
