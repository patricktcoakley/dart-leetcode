import 'package:leetcode/leetcode.dart';
import 'package:leetcode/string/reverse_string.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = ['o', 'l', 'l', 'e', 'h'];
    var input = ['h', 'e', 'l', 'l', 'o'];
    reverseString(input);
    expect(input, equals(expected));
  });

  test('example 2', () {
    var expected = ['H', 'a', 'n', 'n', 'a', 'h'];
    var input = ['h', 'a', 'n', 'n', 'a', 'H'];
    reverseString(input);
    expect(input, equals(expected));
  });
}
