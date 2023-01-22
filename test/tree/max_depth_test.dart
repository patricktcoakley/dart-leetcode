import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([3, 9, 20, null, null, 15, 7]);
    var expected = 3;
    var result = maxDepth(input);
    expect(result, equals(expected));
  });

  test('example 2', () {
    var input = TreeNode.fromList([1, null, 2]);
    var expected = 2;
    var result = maxDepth(input);
    expect(result, equals(expected));
  });
}
