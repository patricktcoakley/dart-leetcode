import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = '()';
    var expected = true;
    var result = isValid(input);
    expect(result, equals(expected));
  });

  test('example 2', () {
    var input = '()[]{}';
    var expected = true;
    var result = isValid(input);
    expect(result, equals(expected));
  });

  test('example 3', () {
    var input = '(]';
    var expected = false;
    var result = isValid(input);
    expect(result, equals(expected));
  });
}
