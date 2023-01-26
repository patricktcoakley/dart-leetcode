import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = [
      ["1", "1", "1", "1", "0"],
      ["1", "1", "0", "1", "0"],
      ["1", "1", "0", "0", "0"],
      ["0", "0", "0", "0", "0"]
    ];
    var expected = 1;
    var result = numIslands(input);

    expect(result, equals(expected));
  });

  test('example 2', () {
    var input = [
      ["1", "1", "0", "0", "0"],
      ["1", "1", "0", "0", "0"],
      ["0", "0", "1", "0", "0"],
      ["0", "0", "0", "1", "1"]
    ];
    var expected = 3;
    var result = numIslands(input);

    expect(result, equals(expected));
  });
}
